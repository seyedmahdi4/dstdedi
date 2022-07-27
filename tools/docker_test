echo test start
sleep 10
while true
do
    if grep "Sim paused" /home/dst/.klei/DoNotStarveTogether/world/Master/server_log.txt   > /tmp/test.txt; then echo test is ok;kill -INT -1; fi
    sleep 5
done
