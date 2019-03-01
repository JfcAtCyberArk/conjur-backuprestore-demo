docker cp conjur-master:/opt/conjur/backup .
docker stop conjur-master
docker run --name conjur-master2 -d --restart=always --security-opt seccomp:unconfined -p "443:443" -p "636:636" -p "5432:5432" -p "1999:1999" registry.tld/conjur-appliance:5.2.3
docker exec -it conjur-master2 bash
docker cp backup conjur-master2:/
docker exec -it conjur-master2 bash


+ Certificates