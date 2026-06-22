#!/bin/bash

set -e

find . -type f -name "*.sh" -exec chmod +x {} \;

SOURCE="server/keygen/keyfile/mongo-keyfile"

for DIR in \
    server/mongos-router-dn \
    server/mongos-router-hn \
    server/mongos-router-sg \
    server/sharde-everes-dn \
    server/sharde-everes-hn \
    server/sharde-everes-sg \
    server/sharde-fansip-dn \
    server/sharde-fansip-hn \
    server/sharde-fansip-sg \
    server/sharde-fujimo-dn \
    server/sharde-fujimo-hn \
    server/sharde-fujimo-sg \
    server/sharde-matter-dn \
    server/sharde-matter-hn \
    server/sharde-matter-sg
do
    TARGET="$DIR/keyfile/mongo-keyfile"
    mkdir -p "$(dirname "$TARGET")"

    cp "$SOURCE" "$TARGET"
    chown 999:999 "$TARGET"
    chmod 400 "$TARGET"
done

chmod +x server/sharde-everes-dn.sh && sudo ./server/sharde-everes-dn.sh
chmod +x server/sharde-everes-hn.sh && sudo ./server/sharde-everes-hn.sh
chmod +x server/sharde-everes-sg.sh && sudo ./server/sharde-everes-sg.sh

chmod +x server/sharde-fansip-dn.sh && sudo ./server/sharde-fansip-dn.sh
chmod +x server/sharde-fansip-hn.sh && sudo ./server/sharde-fansip-hn.sh
chmod +x server/sharde-fansip-sg.sh && sudo ./server/sharde-fansip-sg.sh

chmod +x server/sharde-fujimo-dn.sh && sudo ./server/sharde-fujimo-dn.sh
chmod +x server/sharde-fujimo-hn.sh && sudo ./server/sharde-fujimo-hn.sh
chmod +x server/sharde-fujimo-sg.sh && sudo ./server/sharde-fujimo-sg.sh

echo "Master boot successfully!"
