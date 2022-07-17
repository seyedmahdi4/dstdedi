# dstdedi

##### example:

```docker run --name dst -it -e "CLUSTER_TOKEN=****" -e "CLUSTER_NAME=test server" -e MAX_PLAYER=10 -e MODS=1185229307,378160973 -v `pwd`/save/:/home/dst/.klei/DoNotStarveTogether/example/ dstdedi```

use -v for save your wold 

CLUSTER_TOKEN is require 

#### Instructions on Obtaining Server Token :
Launch a steam client on a system with GUI, install Don't Starve Together, log in, press ~ button then type TheNet:GenerateClusterToken() then press enter. You'll find a cluster_token.txt under your client config directory.


###### All environmental variables and default value:
```
CLUSTER_TOKEN -> none - it is require
CLUSTER_NAME -> dstdedi -- test
MAX_PLAYER  -> 6
CLUSTER_DESCRIPTION -> Powered by Docker - seyedmahdi3/dstdedi
GAMEMODE -> endless
STYLE -> cooperative
PVP -> false
AUTOPAUSE -> true
ADMIN_IDS -> none
MODS -> none
SAVE_URL -> it is zip wolrd's url
```
