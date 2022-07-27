#!/bin/bash
if [  "$SCREEN" = true ]; then
  echo Screen mod is enable
  screen -dmS dst -L server_runner
  sleep 1
  tail -f screenlog.0
else
server_runner
fi


#tail -f .klei/DoNotStarveTogether/world/Master/server_chat_log.txt .klei/DoNotStarveTogether/world/Master/server_log.txt|grep -v "==> .klei"
