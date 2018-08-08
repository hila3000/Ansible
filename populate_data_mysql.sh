#!/bin/bash

echo "drop table if exists"
docker exec -it mysql_master mysql -uroot -pcomplexpass -D sample -e "DROP TABLE sample;"

echo "create table in sample DB"
docker exec -it mysql_master mysql -uroot -pcomplexpass -D sample -e "create table data(a varchar(255));"

echo "Insert data into mysql"
docker exec -it mysql_master mysql -uroot -pcomplexpass -D sample -e "insert into data set a=1;"

echo "check replication to slave - Doesn't work, needs fixing"
docker exec -it mysql_slave mysql -uroot -pcomplexpass -D sample -e "select count(*) from data;"

