until [ -f /tmp/setup.done ]
do
  echo "Yugabyte is setting up"
  sleep 3
done
clear
docker exec -it yugabyte /bin/bash
ysqlsh
