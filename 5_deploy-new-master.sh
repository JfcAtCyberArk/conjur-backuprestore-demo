#! /bin/bash

. ./vars.sh

echo -e "\nCreating $master_container_name as the new master"
docker stop $master_container_name && docker rm $master_container_name
docker run --name $master_container_name -d --restart=always --security-opt seccomp:unconfined --network $docker_network_name $conjur_appliance_name:$conjur_appliance_version


