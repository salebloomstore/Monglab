#!/bin/bash

set -e

docker compose --env-file .env -f sharde-everes-dn/docker-compose.yml down -v --remove-orphans

sudo chown 1000:1000 -R sharde-everes-dn && sudo chmod 777 -R sharde-everes-dn

echo "sharde-everes-dn downed successfully!"
