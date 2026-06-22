#!/bin/bash

set -e

docker compose --env-file .env -f sharde-fujimo-sg/docker-compose.yml down -v --remove-orphans

sudo chown 1000:1000 -R sharde-fujimo-sg && sudo chmod 777 -R sharde-fujimo-sg

echo "sharde-fujimo-sg downed successfully!"
