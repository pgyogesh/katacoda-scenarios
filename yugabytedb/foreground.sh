var=0
until [ var!=1 ]; do
echo >&2 "$(date +%Y%m%dt%H%M%S) Waiting for Environment Setup"
var=$(ysqlsh -Atc 'SELECT 1')
sleep 5
done
docker exec -it yugabyte /bin/bash
ysqlsh
