until docker exec -it yugabyte ls /tmp/setup.done > /dev/null 2>&1
do
  echo "Yugabyte is setting up. Please wait..."
  sleep 3
done
clear
docker exec -it yugabyte /bin/bash
ysqlsh
