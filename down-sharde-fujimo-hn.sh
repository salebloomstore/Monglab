#!/bin/bash

set -e

docker compose --env-file .env -f sharde-fujimo-hn/docker-compose.yml down -v --remove-orphans

sudo chown 1000:1000 -R sharde-fujimo-hn && sudo chmod 777 -R sharde-fujimo-hn

echo "sharde-fujimo-hn downed successfully!"
