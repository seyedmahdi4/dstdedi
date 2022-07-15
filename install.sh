#!/bin/bash
mkdir -p /home/dst/steamcmd/ && \
mkdir -p /home/dst/.klei/DoNotStarveTogether && \
cd /home/dst/steamcmd/ && \
wget "https://steamcdn-a.akamaihd.net/client/installer/steamcmd_linux.tar.gz" && \
tar -xvzf steamcmd_linux.tar.gz && \
./steamcmd.sh +force_install_dir "/home/dst/dontstarvetogether_dedicated_server" +login anonymous +app_update 343050 +quit
