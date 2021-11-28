docker pull yugabytedb/yugabyte:latest
echo "done" >> /root/katacoda-finished
docker run --name yugabyte -p7000:7000 -p9000:9000 -p5433:5433 -p9042:9042 yugabytedb/yugabyte:latest bin/yugabyted start --daemon=false --ui=false
echo "done" >> /root/katacoda-background-finished
