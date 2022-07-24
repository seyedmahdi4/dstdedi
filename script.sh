#!/bin/bash
PA="/home/dst/.klei/DoNotStarveTogether/world"
mkdir -p $PA
gosu root chown -R dst:dst $PA

function fail()
{
	echo Error: "$@" >&2
	exit 1
}

if [  "$TEST__" = true ]; then
  echo note !!!!! testing mode
  chmod +x ./test.sh
  ./test.sh &
fi


if [  "$CHECK_UPDATE" = true ]; then
  /home/dst/steamcmd/steamcmd.sh +force_install_dir "/home/dst/dontstarvetogether_dedicated_server" +login anonymous +app_update 343050 +quit
fi



if [ ! -z "$SAVE_URL" ]; then
echo Downloading
if [ ! "$DEBUG" = "true" ]; then
wget -O $PA/example.zip -o /dev/null $SAVE_URL || fail "downalod world faild!"
unzip $PA/example.zip -d $PA 1> /dev/null  || fail "this world file not zip !"
else
wget -O $PA/example.zip $SAVE_URL || fail "downalod world faild!"
unzip $PA/example.zip -d $PA  || fail "this world file not zip !"
fi
echo Downloaded world successful
rm $PA/example.zip
else

if [ "$REFORGED" = true ]; then
cp -n -r  /home/dst/.klei/DoNotStarveTogether/Reforged/* $PA
MODS="${MODS},1938752683"
if [ "$PUGNAX" = true ]; then
MODS="${MODS},2038128735" 
echo "Pugnax ON"
fi
if [ "$HALLOWED" = true  ]; then
MODS="${MODS},2633870801" 
fi
echo Mods update to $MODS

else
cp -n -r  /home/dst/.klei/DoNotStarveTogether/example_world/* $PA

fi
fi

if [ -z "$CLUSTER_TOKEN" ] || [ "$CLUSTER_TOKEN" = "****"  ] ; then
echo ERROR 404! CLUSTER_TOKEN not found
exit 1
fi

if [ -z "$CLUSTER_NAME" ]; then
CLUSTER_NAME="dstdedi -- test"
fi
echo "Your server name is : $CLUSTER_NAME"

if [ -z "$MAX_PLAYER" ]; then
MAX_PLAYER=6
fi
echo "Max player set to: $MAX_PLAYER"

if [ -z "$CLUSTER_DESCRIPTION" ]; then
CLUSTER_DESCRIPTION="Powered by Docker - seyedmahdi3\/dstdedi"
fi
echo -e "Description set to: $CLUSTER_DESCRIPTION"



if [ -z "$GAMEMODE" ]; then
GAMEMODE="survival"
fi

if [ "$REFORGED" = true ]; then
GAMEMODE="lavaarena"
fi

echo "Gamemode set to: $GAMEMODE"

if [ -z "$STYLE" ]; then
STYLE="cooperative"
fi
echo "Playstyle set to: $STYLE"

if [ -z "$PVP" ]; then
PVP="false"
fi
echo "PVP set to: $PVP"

if [ -z "$AUTOPAUSE" ]; then
AUTOPAUSE="true"
fi
echo "Autopause is : $AUTOPAUSE"
if [ ! -z "$CLUSTER_PASSWORD" ]; then
echo "Password is set to: $CLUSTER_PASSWORD"
fi

if [ -z "$STEAM_GROUP_ID" ]; then
STEAM_GROUP_ID=0
STEAM_GROUP_ONLY=false
STEAM_GROUP_ADMINS=false
else
if [ -z "$STEAM_GROUP_ONLY" ]; then
STEAM_GROUP_ONLY=false
fi
if [ -z "$STEAM_GROUP_ADMINS" ]; then
STEAM_GROUP_ADMINS=false
fi
fi
echo "Steam group id is set to : $STEAM_GROUP_ID"
echo "Steam group only is set to : $STEAM_GROUP_ONLY"
echo "Steam group admins is set to : $STEAM_GROUP_ADMINS"

if [ ! -f "$PA/cluster.ini" ]; then
cp  /home/dst/.klei/DoNotStarveTogether/example_world/cluster.ini $PA/cluster.ini
fi

sed -i "s/cluster_name = .*$/cluster_name = ${CLUSTER_NAME}/g" $PA/cluster.ini || fail "error in permision . make issues"
sed -i "s/cluster_description = .*$/cluster_description = ${CLUSTER_DESCRIPTION}/g" $PA/cluster.ini
sed -i "s/max_players = .*$/max_players = ${MAX_PLAYER}/g" $PA/cluster.ini
sed -i "s/cluster_password = .*$/cluster_password = ${CLUSTER_PASSWORD}/g" $PA/cluster.ini
sed -i "s/pvp = .*$/pvp = ${PVP}/g" $PA/cluster.ini
sed -i "s/cluster_intention = .*$/cluster_intention = ${STYLE}/g" $PA/cluster.ini
sed -i "s/pause_when_empty = .*$/pause_when_empty = ${AUTOPAUSE}/g" $PA/cluster.ini
sed -i "s/game_mode = .*$/game_mode = ${GAMEMODE}/g" $PA/cluster.ini
sed -i "s/steam_group_id = .*$/steam_group_id = ${STEAM_GROUP_ID}/g" $PA/cluster.ini
sed -i "s/steam_group_only = .*$/steam_group_only = ${STEAM_GROUP_ONLY}/g" $PA/cluster.ini
sed -i "s/steam_group_admins = .*$/steam_group_admins = ${STEAM_GROUP_ADMINS}/g" $PA/cluster.ini
echo $CLUSTER_TOKEN > $PA/cluster_token.txt

IFS=',' read -ra admins <<< "${ADMIN_IDS}"
for admin in "${admins[@]}"; do
  echo $admin >> $PA/adminlist.txt
  echo "Add admins:$admin"
done


#mod

if [ ! -z "$MODS" ]; then
MODOVER="$PA/Master/modoverrides.lua"
MODOVER_Caves="$PA/Caves/modoverrides.lua"
echo -e "return {" > $MODOVER
if [ ! "$REFORGED" = true ]; then
echo -e "return {" > $MODOVER_Caves
fi
IFS=',' read -ra all_mods <<< "${MODS}"
for mod in "${all_mods[@]}"; do
  echo -e "[\"workshop-${mod}\"]={enabled=true}," >> $MODOVER
if [ ! "$REFORGED" = true ]; then
  echo -e "[\"workshop-${mod}\"]={enabled=true}," >> $MODOVER_Caves
fi
  echo -e "ServerModSetup(\"${mod}\")"   >> /home/dst/dontstarvetogether_dedicated_server/mods/dedicated_server_mods_setup.lua
  echo  "Mod ${mod} is enable"
done
echo -e "}" >> $MODOVER
if [ ! "$REFORGED" = true ]; then
echo -e "}" >> $MODOVER_Caves
fi
fi



cd /home/dst/dontstarvetogether_dedicated_server/bin64
grep_cmd="grep 'Server registered\|is now ready\|Your Server Will Not Start\|No auth token could be found\|Account Failed\|Please visit\|Sim paused\|Client connected\|Client authenticated\|Announcement\|Say\|Sim unpaused\|request\:\|Spawning player at\|Server Autopaused\|ReceiveRemoteExecute\|Available disk space for save files'"
if [ ! "$DEBUG" = "true" ]; then

if [ "$REFORGED" = true ]; then
echo "Running Reforged server . . ."
echo "------------"
echo
./dontstarve_dedicated_server_nullrenderer_x64 -console -cluster world -monitor_parent_process $$ -shard Master |grep 'Server registered\|is now ready\|Your Server Will Not Start\|No auth token could be found\|Account Failed\|Please visit\|Sim paused\|Client connected\|Client authenticated\|Announcement\|Say\|Sim unpaused\|request\:\|Spawning player at\|Server Autopaused\|ReceiveRemoteExecute\|Available disk space for save files'
else
echo "Running server . . ."
echo "------------"
echo

./dontstarve_dedicated_server_nullrenderer_x64 -console -cluster world -monitor_parent_process $$ -shard Master |grep 'Server registered\|is now ready\|Your Server Will Not Start\|No auth token could be found\|Account Failed\|Please visit\|Sim paused\|Client connected\|Client authenticated\|Announcement\|Say\|Sim unpaused\|request\:\|Spawning player at\|Server Autopaused\|ReceiveRemoteExecute\|Available disk space for save files' & \
./dontstarve_dedicated_server_nullrenderer_x64 -console -cluster world -monitor_parent_process $$ -shard Caves | grep 'Server registered\|is now ready\|Your Server Will Not Start\|No auth token could be found\|Account Failed\|Please visit\|Sim paused\|Client connected\|Client authenticated\|Announcement\|Say\|Sim unpaused\|request\:\|Spawning player at\|Server Autopaused\|ReceiveRemoteExecute\|Available disk space for save files'
fi

else


echo "running server . . ."
echo "------------"
echo
if [ "$REFORGED" = true ] || [ "$CAVE" = false ]  ; then
./dontstarve_dedicated_server_nullrenderer_x64 -console -cluster world -monitor_parent_process $$ -shard Master
else
./dontstarve_dedicated_server_nullrenderer_x64 -console -cluster world -monitor_parent_process $$ -shard Master & \
./dontstarve_dedicated_server_nullrenderer_x64 -console -cluster world -monitor_parent_process $$ -shard Caves
fi
fi
