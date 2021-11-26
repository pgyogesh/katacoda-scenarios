docker pull yugabytedb/yugabyte:2.11.0.0-b7
docker run -d --name yugabyte  -p7000:7000 -p9000:9000 -p5433:5433 -p9042:9042 yugabytedb/yugabyte:2.11.0.0-b7 bin/yugabyted start --daemon=false --ui=false
docker exec -it yugabyte /home/yugabyte/bin/ysqlsh
