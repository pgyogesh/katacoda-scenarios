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
