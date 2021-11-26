docker pull yugabytedb/yugabyte:latest
docker run -d --name yugabyte -p7000:7000 -p9000:9000 -p5433:5433 -p9042:9042 yugabytedb/yugabyte:latest bin/yugabyted start --daemon=false --ui=false
sleep 1
docker exec -it yugabyte /home/yugabyte/bin/ysqlsh
touch /tmp/env_created
