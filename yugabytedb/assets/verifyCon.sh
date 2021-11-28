var="Not accepting"
until [ "$var" = "accepting" ]
do
  sleep 2
  var=$(docker exec yugabyte /home/yugabyte/bin/ysqlsh -Atc "SELECT 'accepting'")
done
echo "done" >> /root/katacoda-background-finished
