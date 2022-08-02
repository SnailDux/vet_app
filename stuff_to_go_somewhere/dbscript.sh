#!/bin/bash

#remove tables
sudo docker cp delete_schemas.sql postgres_local:/docker-entrypoint-initdb.d/delete_schemas.sql
sudo docker exec -it postgres_local psql -U admin -f docker-entrypoint-initdb.d/delete_schemas.sql

#create tables
sudo docker cp create_schemas.sql postgres_local:/docker-entrypoint-initdb.d/create_schemas.sql
sudo docker exec -it postgres_local psql -U admin -f docker-entrypoint-initdb.d/create_schemas.sql


#insert some example data
sudo docker cp basic_data.sql postgres_local:/docker-entrypoint-initdb.d/basic_data.sql
sudo docker exec -it postgres_local psql -U admin -f docker-entrypoint-initdb.d/basic_data.sql
