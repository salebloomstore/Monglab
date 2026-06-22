#!/bin/bash

set -e

docker compose --env-file .env -f sharde-fansip-sg/docker-compose.yml down -v --remove-orphans

sudo chown 1000:1000 -R sharde-fansip-sg && sudo chmod 777 -R sharde-fansip-sg

echo "sharde-fansip-sg downed successfully!"
