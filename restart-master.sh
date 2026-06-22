#!/bin/bash

set -e

find . -type f -name "*.sh" -exec chmod +x {} \;

SOURCE="keygen/keyfile/mongo-keyfile"

for DIR in \
    mongos-router-dn \
    mongos-router-hn \
    mongos-router-sg \
    sharde-everes-dn \
    sharde-everes-hn \
    sharde-everes-sg \
    sharde-fansip-dn \
    sharde-fansip-hn \
    sharde-fansip-sg \
    sharde-fujimo-dn \
    sharde-fujimo-hn \
    sharde-fujimo-sg \
    sharde-matter-dn \
    sharde-matter-hn \
    sharde-matter-sg
do
    TARGET="$DIR/keyfile/mongo-keyfile"
    mkdir -p "$(dirname "$TARGET")"

    cp "$SOURCE" "$TARGET"
    chown 999:999 "$TARGET"
    chmod 400 "$TARGET"
done

chmod +x restart-sharde-everes-dn.sh && sudo ./restart-sharde-everes-dn.sh
chmod +x restart-sharde-everes-hn.sh && sudo ./restart-sharde-everes-hn.sh
chmod +x restart-sharde-everes-sg.sh && sudo ./restart-sharde-everes-sg.sh

echo "Master restarted successfully!"
