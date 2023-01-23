#/bin/bash
cp main-config/tutorial.conf main-config/minetest.conf
docker-compose -f tutorial.yaml stop
rm debug.txt
rm -R worlds/Tutorial
cp -R minetest-Tutorial/worlds/Tutorial  worlds/
# docker-compose -f tutorial.yaml up
