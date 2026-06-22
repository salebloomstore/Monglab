#!/bin/bash

set -e

docker compose --env-file .env -f sharde-fujimo-dn/docker-compose.yml down -v --remove-orphans

sudo chown 1000:1000 -R sharde-fujimo-dn && sudo chmod 777 -R sharde-fujimo-dn

echo "sharde-fujimo-dn downed successfully!"
