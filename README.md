A docker image for running DST servers.

## How To Run

#### Using `docker run`:
- run container:
```
docker run --name dst -it -d -e "CLUSTER_TOKEN=****" -e "CLUSTER_NAME=test server" -e MAX_PLAYER=10\
-e MODS=1185229307,378160973 -v /path/to/dst-data/:/home/dst/.klei/DoNotStarveTogether/world/ dstdedi
```
- stopping container: ```docker stop dst```
- starting container after stopping: ```docker start dst```
- deleting container: ```docker rm -f dst```

#### Using `docker-compose`:
- run container: ```docker-compose up -d```
- stop container: ```docker-compose down```
- docker-compose.yml file structure:
```yaml
version "3"

services:
  dst:
    image: seyedmahdi3/dstdedi:0.2
    ports:  # binding ports for connecting via c_connect("ip/address", port)
      - 11000:11000
    tty: true
    stdin_open: true
    volumes:  # save location
      - ./dst-data:/home/dst/.klei/DoNotStarveTogether/world/
    environment:  # set environment variables here
      CLUSTER_TOKEN: "****"
      CLUSTER_NAME: "dstdedi -- test"
      # ...
```

NOTE: Use `-v` if you want the world saves to persist.([Full list of environmental variables](#all-environmental-variables-and-their-default-values))

NOTE: Use c_save() console command before shutting the server down, or else you will lose world progress made after the last save (by default game saves at the start of the day).

NOTE: For updating mods, restart the server by running `docker restart dst`.

## Add mods
fist get IDs from the steam workshop .for example steamcommunity.com/sharedfiles/filedetails/?id=1185229307 this is Epic Healthbar mod and mod's ID is `1185229307`. and use it in MODS env as an example:
`-e MODS=1185229307,378160973`
```
docker run --name dst -it -d -e "CLUSTER_TOKEN=****" -e MODS=1185229307,378160973 seyedmahdi3/dstdedi:0.2
```
## Updating The Game
By setting `CHECK_UPDATE` to `true`, server will check for game updates and automatically download it after each container start/restart. If this option is set to true, simply restart the container by running `docker restart dst` to update the game. If `CHECK_UPDATE` is set to `false`, run `docker rm -f` and then run the container again with `CHECK_UPDATE` set to `true`.


## Running An Existing World
1- With url: If you want to run an existing world, you need to provide `SAVE_URL` with a direct link to your world's .zip file. Example of .zip file:
```
.
└── my_world.zip
    ├── Master
    │   ├── files
    │   └── ...
    └── Caves
        ├── files
        └── ...

```
and run it with this:
```
docker run --name dst  -it -d  -e "CLUSTER_TOKEN=**" -e "SAVE_URL=https://example.com/world.zip"  seyedmahdi3/dstdedi:0.2
```
2- with your world folder: If you have your world folder on the server, you can supply its location to `-v` like: 
```
docker run --name dst -it -d -e "CLUSTER_TOKEN=****" -v /path/to/your_cluster/:/home/dst/.klei/DoNotStarveTogether/world/ dstdedi
```
Or set `volumes` to its location in `docker-compose.yml` like:
```yml
#...
  #...
    volumes:
      - /path/to/your_cluster/:/home/dst/.klei/DoNotStarveTogether/world/
```

## Running ReForged
You can run a ReForged modded world by setting `REFORGED` env variable to `true`. You can also enable ReForged extension mods, PugnaX and Hallowed by setting `PUGNAX` and `HALLOWED` to `true`.

docker run example:
```
docker run --name dst -it -d -e "CLUSTER_TOKEN=****" -e REFORGED=true  seyedmahdi3/dstdedi:0.2
```

docker-compose.yml example:
```yml
version "3"

services:
  dst_forge:
    image: seyedmahdi3/dstdedi:0.2
    tty: true
    stdin_open: true
    environment:  # set environment variables here
      CLUSTER_TOKEN: "****"
      CLUSTER_NAME: "dstdedi -- test"
      REFORGED: "true"
      PUGNAX: "true"
      HALLOWED: "true"
      # ...
```


## Executing DST Console Commands
In order to run console commands from dedicated server as host(e.g. making announcements), container must be run with `-it` option, then run `docker attach dst` in shell. Now you can run DST console commands. For dettaching do `ctrl-p` and `ctrl-q`.


## Port Forwarding
By default, you can search servers in game and connect to it; This will make the connection go through steamapi. However, by using c_connect("ip/address", port) console command in-game, you can connect directly to the server, which reduces lag. In order to be able to connect directly, you need to set the ports. If you are running the container by `docker run`, use `-p` option; For example: 
```
docker run --name dst -it -d -e "CLUSTER_TOKEN=****" -p 11000:11000 seyedmahdi3/dstdedi:0.2
```
You can set the ports option in `docker-compose.yml` aswell.


## All Environmental Variables and Their Default Values
```
CLUSTER_TOKEN       -> Unique DST server token (REQUIRED, has no default)
CLUSTER_NAME        -> Server name (default: dstdedi -- test)
CLUSTER_DESCRIPTION -> Server description (default: Powered by Docker - seyedmahdi3/dstdedi)
CLUSTER_PASSWORD    -> Server password (default: NONE)
MAX_PLAYER          -> Max number of players (default: 6)
GAMEMODE            -> Server gamemode (default: survival)
STYLE               -> Server style (default: cooperative)
PVP                 -> PVP mode (default: false)
AUTOPAUSE           -> Enable Auto-pause if there is one player (default: false)
CAVE                -> Run cave shard. (default: true)
REFORGED            -> Enable ReForged mod. (default: false)
PUGNAX              -> Enable PugnaX mod. (requires REFORGED=true, default: false)
HALLOWED            -> Enable Hallowed ReForge mod. (requires REFORGED=true, default: false)
DEBUG               -> Show all serevr logs. (default: false)
ADMIN_IDS           -> List of players' KU IDs (default: NONE)
MODS                -> List of steam workshop IDs to be installed (default: NONE)
SAVE_URL            -> A direct link to your world's save file (default: NONE)
CHECK_UPDATE        -> whether to check for game updates after starting the container or not (default: true)
STEAM_GROUP_ID      -> Your steam group ID so that players in the group can join the server easily (default: 0)
STEAM_GROUP_ONLY    -> Allow only steam group member to join the server (default: false)
STEAM_GROUP_ADMINS  -> Admins of the steam group also becomes admins of the server (default: false)
```

Note: if you want more than 1 admin or 1 mod, separate each ID with a comma; For example: MODS=123456789,456789123,891234567


## Instructions on Obtaining Server Token
Launch a steam client on a system with GUI, install Don't Starve Together, log in, press ~ button then type TheNet:GenerateClusterToken() then press enter. You'll find a cluster_token.txt under your client config directory.
