#!/bin/bash
screen -dmS dst ./script.sh
sleep 3
tail -f .klei/DoNotStarveTogether/world/Master/server_chat_log.txt .klei/DoNotStarveTogether/world/Master/server_log.txt|grep -v "==> .klei"
