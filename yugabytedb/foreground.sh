until docker exec -it yugabyte /home/yugabyte/bin/ysqlsh -Atc 'SELECT 1'
do
  echo "Waiting for environment to setup"
  sleep 5
done 2> /dev/null
clear
docker exec -it yugabyte /bin/bash
ysqlsh
