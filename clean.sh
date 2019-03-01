#! /bin/bash

. ./vars.sh

docker stop $master_container_name && docker rm $master_container_name
docker stop $conjur_cli_container_name && docker rm $conjur_cli_container_name
docker network rm $docker_network_name
rm -rf backup