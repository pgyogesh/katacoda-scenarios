var="Not accepting"
until [ "$var" = "accepting" ]
do
  sleep 2
done
echo "done" >> /root/katacoda-background-finished
