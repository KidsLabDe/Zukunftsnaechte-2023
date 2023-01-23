#/bin/bash
cp main-config/workshop.conf main-config/minetest.conf
docker-compose -f workshop.yaml stop
rm debug.txt
docker-compose -f workshop.yaml up
