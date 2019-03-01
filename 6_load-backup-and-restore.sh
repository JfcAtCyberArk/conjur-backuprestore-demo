#! /bin/bash

. ./vars.sh

echo -e "\n Loading the backup to $master_container_name"
docker cp backup $master_container_name:/opt/conjur/
backup_file=$(ls backup | grep gpg)
docker exec $master_container_name evoke unpack backup --key /opt/conjur/backup/key /opt/conjur/backup/$backup_file
docker exec $master_container_name evoke restore
