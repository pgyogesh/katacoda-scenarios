var=0
while [ var!=1 ]; do
echo >&2 "$(date +%Y%m%dt%H%M%S) Waiting for Environment Setup"
var=$(docker exec -it yugabyte /home/yugabyte/bin/ysqlsh -Atc 'SELECT 1') > /dev/null 2>&1
sleep 5
done
docker exec -it yugabyte /bin/bash
ysqlsh
