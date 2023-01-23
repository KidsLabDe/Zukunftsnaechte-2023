#/bin/bash
read -p "Welche Welt willst Du Starten? (01, 02, 03 etc.) : " world
echo $world
EXPORT WORLDNAME=$world
cp main-config/workshop.conf main-config/minetest.conf
docker-compose -f workshop-old.yaml stop
rm debug.txt
docker-compose -f workshop.yaml up
