#!/bin/bash

set -e

find . -type f -name "*.sh" -exec chmod +x {} \;

# docker compose down -v --remove-orphans
# docker compose up -d --build --force-recreate

sudo chown 1000:1000 -R . && sudo chmod 777 -R .

echo "Master started successfully!"
