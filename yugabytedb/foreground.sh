until docker exec -it yugabyte /home/yugabyte/bin/ysqlsh -Atc 'SELECT 1'
do
  echo >&2 "$(date +%Y%m%dt%H%M%S) Waiting for Environment Setup"
  sleep 5
done
docker exec -it yugabyte /bin/bash
ysqlsh
