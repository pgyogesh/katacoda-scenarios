#!/bin/bash
sleep 0.5; wait.sh
docker exec -it yugabyte /home/yugabyte/bin/ysqlsh
