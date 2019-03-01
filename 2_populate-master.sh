#! /bin/bash

. ./vars.sh

docker run -d -it --network $docker_network_name --name $conjur_cli_container_name $conjur_cli_image:$conjur_cli_version
docker cp sample-policy.yml $conjur_cli_container_name:/sample-policy.yml
docker exec -it $conjur_cli_container_name bash -c "yes yes | conjur init -u https://$master_container_name -a $org_account"
docker exec $conjur_cli_container_name conjur authn login -u admin -p $admin_password
docker exec $conjur_cli_container_name conjur policy load root sample-policy.yml
