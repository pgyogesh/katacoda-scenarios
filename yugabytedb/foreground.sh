until docker exec -it yugabyte /bin/bash ls /tmp/setup.done
do
  echo "Yugabyte is setting up. Please wait..."
  sleep 3
done
clear
docker exec -it yugabyte /bin/bash
ysqlsh
