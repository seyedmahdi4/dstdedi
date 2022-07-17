#!/bin/bash
PA="/home/dst/.klei/DoNotStarveTogether/example"
mkdir -p /home/dst/.klei/DoNotStarveTogether/example/
gosu root chown -R dst:dst /home/dst/.klei/DoNotStarveTogether/example/

if [ ! -z "$SAVE_URL" ]; then
echo 1
wget -O $PA/example.zip $SAVE_URL
unzip $PA/example.zip -d $PA 
echo downloaded save
rm $PA/example.zip
else
echo 2
cp -n -r  /home/dst/.klei/DoNotStarveTogether/example1/* /home/dst/.klei/DoNotStarveTogether/example/
fi


if [ -z "$MAX_PLAYER" ]; then
MAX_PLAYER=6
fi
echo "max player set $MAX_PLAYER"

if [ -z "$CLUSTER_DESCRIPTION" ]; then
CLUSTER_DESCRIPTION="Powered by Docker - seyedmahdi3\/dstdedi"
fi
echo -e "description is $CLUSTER_DESCRIPTION"

if [ -z "$CLUSTER_NAME" ]; then
CLUSTER_NAME="dstdedi -- test"
fi
echo "server name is : $CLUSTER_NAME"

if [ -z "$CLUSTER_TOKEN" ]; then
echo ERROR 404! CLUSTER_TOKEN not found
exit 1
fi

if [ -z "$GAMEMODE" ]; then
GAMEMODE="endless"
fi
echo "gamemode is : $GAMEMODE"

if [ -z "$STYLE" ]; then
STYLE="cooperative"
fi
echo "playstyle is : $STYLE"

if [ -z "$PVP" ]; then
PVP="false"
fi
echo "PVP is : $PVP"


if [ -z "$AUTOPAUSE" ]; then
AUTOPAUSE="true"
fi
echo "autopause is : $AUTOPAUSE"


sed -i "s/cluster_name = .*$/cluster_name = ${CLUSTER_NAME}/g" $PA/cluster.ini
sed -i "s/cluster_description = .*$/cluster_description = ${CLUSTER_DESCRIPTION}/g" $PA/cluster.ini
sed -i "s/max_players = .*$/max_players = ${MAX_PLAYER}/g" $PA/cluster.ini
sed -i "s/cluster_password = .*$/cluster_password = ${CLUSTER_PASSWORD}/g" $PA/cluster.ini

sed -i "s/pvp = .*$/pvp = ${PVP}/g" $PA/cluster.ini
sed -i "s/cluster_intention = .*$/cluster_intention = ${STYLE}/g" $PA/cluster.ini
sed -i "s/pause_when_empty = .*$/pause_when_empty = ${AUTOPAUSE}/g" $PA/cluster.ini
sed -i "s/game_mode = .*$/game_mode = ${GAMEMODE}/g" $PA/cluster.ini
echo $CLUSTER_TOKEN > $PA/cluster_token.txt

IFS=',' read -ra admins <<< "${ADMIN_IDS}"
for admin in "${admins[@]}"; do
  echo $admin >> $PA/adminlist.txt
  echo "admin $admin added"
done


#mod

if [ ! -z "$MODS" ]; then
if [ ! -f $PA/Master/modoverrides.lua  ]; then
MODOVER="$PA/Master/modoverrides.lua"
MODOVER_Caves="$PA/Caves/modoverrides.lua"
echo -e "return {" > $MODOVER
echo -e "return {" > $MODOVER_Caves
IFS=',' read -ra all_mods <<< "${MODS}"
for mod in "${all_mods[@]}"; do
  echo -e "[\"workshop-${mod}\"]={enabled=true}," >> $MODOVER
  echo -e "[\"workshop-${mod}\"]={enabled=true}," >> $MODOVER_Caves
  echo -e "ServerModSetup(\"${mod}\")"   >> /home/dst/dontstarvetogether_dedicated_server/mods/dedicated_server_mods_setup.lua
  echo  "Mod ${mod} is enable"
done
echo -e "}" >> $MODOVER
echo -e "}" >> $MODOVER_Caves
fi
fi

#

cd /home/dst/dontstarvetogether_dedicated_server/bin64
echo "running server . . ."
./dontstarve_dedicated_server_nullrenderer_x64 -console -cluster example -monitor_parent_process $$ -shard Master & \
./dontstarve_dedicated_server_nullrenderer_x64 -console -cluster example -monitor_parent_process $$ -shard Caves
