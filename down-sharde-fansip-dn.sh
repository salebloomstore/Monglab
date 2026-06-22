#!/bin/bash

set -e

docker compose --env-file .env -f sharde-fansip-dn/docker-compose.yml down -v --remove-orphans

sudo chown 1000:1000 -R sharde-fansip-dn && sudo chmod 777 -R sharde-fansip-dn

echo "sharde-fansip-dn downed successfully!"
