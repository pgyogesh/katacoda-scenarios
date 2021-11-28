var="Not accepting"
while [ "$var" = "Not accepting" ]
do
  sleep 2
  var=$(docker exec yugabyte /home/yugabyte/bin/ysqlsh -Atc "SELECT 'accepting'")
  if [ "$var" = "accepting" ]
  then
    echo "done" >> /root/katacoda-background-finished
  fi
done
