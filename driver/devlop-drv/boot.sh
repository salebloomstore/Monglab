#!/bin/bash

set -e

SOURCE="server/keygen/keyfile/mongo-keyfile"
TARGET="server/devlop-router-io/keyfile/mongo-keyfile"
mkdir -p "$(dirname "$TARGET")"
cp "$SOURCE" "$TARGET"
chown 999:999 "$TARGET"
chmod 400 "$TARGET"

docker compose --env-file .env -f server/devlop-router-io/docker-compose.yml up -d --build --force-recreate

echo "devlop-router-io boot successfully!"
