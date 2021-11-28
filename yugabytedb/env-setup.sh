docker pull yugabytedb/yugabyte:latest
echo "done" >> /root/katacoda-finished
docker -d run --name yugabyte -p7000:7000 -p9000:9000 -p5433:5433 -p9042:9042 yugabytedb/yugabyte:latest bin/yugabyted start --daemon=false --ui=false

var=0
while [ $var -eq 0 ]
do
  sleep 2
  var=$(docker exec -it yugabyte /home/yugabyte/bin/ysqlsh -Atc 'SELECT 1')
  if [ $var -eq 1 ]
  then
                echo "done" >> /root/katacoda-background-finished
        fi
done
