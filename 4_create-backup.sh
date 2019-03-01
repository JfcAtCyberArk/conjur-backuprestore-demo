#! /bin/bash

. ./vars.sh

echo -e "\nCreating the backup of $master_container_name"
docker exec $master_container_name evoke backup
docker cp $master_container_name:/opt/conjur/backup .