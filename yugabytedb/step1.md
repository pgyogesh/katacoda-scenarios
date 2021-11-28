Install Yugabyte using following command.

`docker pull yugabytedb/yugabyte:latest`{{execute}}
`docker run -d --name yugabyte  -p7000:7000 -p9000:9000 -p5433:5433 -p9042:9042 yugabytedb/yugabyte:latest bin/yugabyted start --daemon=false --ui=false`{{execute}}

Access YSQL using following command.

`docker exec -it yugabyte /home/yugabyte/bin/ysqlsh`{{execute}}
`docker exec -it yugabyte /bin/bash`{{execute}}
