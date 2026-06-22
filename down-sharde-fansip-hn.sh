#!/bin/bash

set -e

docker compose --env-file .env -f sharde-fansip-hn/docker-compose.yml down -v --remove-orphans

sudo chown 1000:1000 -R sharde-fansip-hn && sudo chmod 777 -R sharde-fansip-hn

echo "sharde-fansip-hn downed successfully!"
