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
    server/harde-fansip-hn \
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

chmod +x sharde-everes-dn.sh && sudo ./sharde-everes-dn.sh
chmod +x sharde-everes-hn.sh && sudo ./sharde-everes-hn.sh
chmod +x sharde-everes-sg.sh && sudo ./sharde-everes-sg.sh

chmod +x sharde-fansip-dn.sh && sudo ./sharde-fansip-dn.sh
chmod +x sharde-fansip-hn.sh && sudo ./sharde-fansip-hn.sh
chmod +x sharde-fansip-sg.sh && sudo ./sharde-fansip-sg.sh

chmod +x sharde-fujimo-dn.sh && sudo ./sharde-fujimo-dn.sh
chmod +x sharde-fujimo-hn.sh && sudo ./sharde-fujimo-hn.sh
chmod +x sharde-fujimo-sg.sh && sudo ./sharde-fujimo-sg.sh

echo "Master boot successfully!"
