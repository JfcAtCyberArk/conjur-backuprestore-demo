#! /bin/bash

. ./vars.sh

docker exec $conjur_cli_container_name conjur authn login -u admin -p $admin_password
docker exec $conjur_cli_container_name conjur list