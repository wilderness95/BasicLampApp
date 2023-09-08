#!/bin/bash

git pull
git checkout origin/OCI

docker login -u $DOCKER_LOGIN_USER -p $DOCKER_LOGIN_TOKEN 

docker compose down
docker compose up -d