#!/bin/bash

set -e

docker compose --env-file ../../.env -f ../../server/sharde-fujimo-dn/docker-compose.yml down -v --remove-orphans

echo "sharde-fujimo-dn downed successfully!"
