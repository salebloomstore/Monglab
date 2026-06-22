#!/bin/bash

set -e

find . -type f -name "*.sh" -exec chmod +x {} \;

SOURCE="/keygen/keyfile/mongo-keyfile"

for DIR in \
    /mongos-router-dn \
    /mongos-router-hn \
    /mongos-router-sg \
    /sharde-everes-dn \
    /sharde-everes-hn \
    /sharde-everes-sg \
    /sharde-fansip-dn \
    /sharde-fansip-hn \
    /sharde-fansip-sg \
    /sharde-fujimo-dn \
    /sharde-fujimo-hn \
    /sharde-fujimo-sg \
    /sharde-matter-dn \
    /sharde-matter-hn \
    /sharde-matter-sg
do
    TARGET="$DIR/keyfile/mongo-keyfile"

    cp "$SOURCE" "$TARGET"
    chown 999:999 "$TARGET"
    chmod 400 "$TARGET"
done

# docker compose down -v --remove-orphans
# docker compose up -d --build --force-recreate

sudo chown 1000:1000 -R . && sudo chmod 777 -R .

echo "Master started successfully!"
