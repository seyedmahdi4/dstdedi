#!/bin/bash
if [ "$SCREEN" = true ]; then
  echo Screen mod is enable
  if [ "$SHIP" = true ]; then
  screen -dmS dst -L ship_runner
  else
  screen -dmS dst -L server_runner
  fi
  sleep 1
  tail -n 1000 -f screenlog.0
else
  if [ "$SHIP" = true ]; then
    ship_runner
  else
    server_runner
  fi
fi