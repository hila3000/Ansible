#!/bin/bash

echo "drop table if exists"
docker exec -it mysql_master mysql -uroot -pcomplexpass -D sample -e "DROP TABLE data;"

echo "create table in sample DB"
docker exec -it mysql_master mysql -uroot -pcomplexpass -D sample -e "CREATE TABLE data(a varchar(255));"

echo "Insert data into mysql"
docker exec -it mysql_master mysql -uroot -pcomplexpass -D sample -e "INSERT INTO data set a=1;"

echo "check replication to slave - Doesn't work, needs fixing"
docker exec -it mysql_slave mysql -uroot -pcomplexpass -D sample -e "SELECT count(*) from data;"

