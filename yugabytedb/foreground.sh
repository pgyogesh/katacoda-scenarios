until docker exec -it yugabyte /home/yugabyte/bin/ysqlsh -Atc 'SELECT 1' > /dev/null 2>&1
do
  echo "Waiting for environment to setup"
  sleep 5
done
docker exec -it yugabyte /bin/bash
ysqlsh
