docker pull yugabytedb/yugabyte:latest
docker run -d --name yugabyte -p7000:7000 -p9000:9000 -p5433:5433 -p9042:9042 yugabytedb/yugabyte:latest bin/yugabyted start --daemon=false --ui=false
sleep 10
touch /tmp/env_created