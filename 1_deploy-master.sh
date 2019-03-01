#! /bin/bash

. ./vars.sh

echo -e "\nCreating $docker_network_name docker network"
docker network create $docker_network_name

echo -e "\nCreating $master_container_name as the first master"
docker run --name $master_container_name -d --restart=always --security-opt seccomp:unconfined --network $docker_network_name $conjur_appliance_name:$conjur_appliance_version

echo -e "\nConfiguring $master_container_name to be a master"
docker exec -it $master_container_name bash -c "evoke configure master -h $master_container_name -p $admin_password $org_account"

