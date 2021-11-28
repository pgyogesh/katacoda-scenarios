docker pull yugabytedb/yugabyte:latest
docker run -d --name yugabyte -p7000:7000 -p9000:9000 -p5433:5433 -p9042:9042 yugabytedb/yugabyte:latest bin/yugabyted start --daemon=false --ui=false
until docker exec yugabyte /home/yugabyte/bin/ysqlsh -Atc 'SELECT 1' -o /tmp/setup.done > /tmp/error.log 2>&1
do
  sleep 1;
done
