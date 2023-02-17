#!/bin/bash
PROJECT_REPO_URL="https://github.com/andersmateusz/ShopwareSampleProject.git"
docker compose stop
rm -dr shopware
mkdir shopware
mkdir shopware/html
id=$(docker run -d dockware/dev:latest)
docker cp ${id}:/var/www/html/. shopware/html/.
docker stop $id
docker rm $id
rm -rd shopware/html/custom/static-plugins
mkdir shopware/html/custom/static-plugins
cp update.sh shopware/html/update.sh
git clone --recurse-submodules $PROJECT_REPO_URL shopware/html/custom/static-plugins
docker compose up -d
cd shopware/html/custom/static-plugins && git submodule init && git submodule update
