#!/bin/bash

git pull
git checkout origin/try_buildx_to_create_arb54_based_image

docker login -u $DOCKER_LOGIN_USER -p $DOCKER_LOGIN_TOKEN 

docker compose down
docker compose up -d