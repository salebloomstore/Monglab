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

chmod +x driver/boot/sharde-everes-dn.sh && sudo ./driver/boot/sharde-everes-dn.sh
chmod +x driver/boot/sharde-everes-hn.sh && sudo ./driver/boot/sharde-everes-hn.sh
chmod +x driver/boot/sharde-everes-sg.sh && sudo ./driver/boot/sharde-everes-sg.sh

chmod +x driver/boot/sharde-fansip-dn.sh && sudo ./driver/boot/sharde-fansip-dn.sh
chmod +x driver/boot/sharde-fansip-hn.sh && sudo ./driver/boot/sharde-fansip-hn.sh
chmod +x driver/boot/sharde-fansip-sg.sh && sudo ./driver/boot/sharde-fansip-sg.sh

chmod +x driver/boot/sharde-fujimo-dn.sh && sudo ./driver/boot/sharde-fujimo-dn.sh
chmod +x driver/boot/sharde-fujimo-hn.sh && sudo ./driver/boot/sharde-fujimo-hn.sh
chmod +x driver/boot/sharde-fujimo-sg.sh && sudo ./driver/boot/sharde-fujimo-sg.sh

chmod +x driver/boot/sharde-matter-dn.sh && sudo ./driver/boot/sharde-matter-dn.sh
chmod +x driver/boot/sharde-matter-hn.sh && sudo ./driver/boot/sharde-matter-hn.sh
chmod +x driver/boot/sharde-matter-sg.sh && sudo ./driver/boot/sharde-matter-sg.sh

chmod +x driver/boot/mongos-router-dn.sh && sudo ./driver/boot/mongos-router-dn.sh
chmod +x driver/boot/mongos-router-hn.sh && sudo ./driver/boot/mongos-router-hn.sh
chmod +x driver/boot/mongos-router-sg.sh && sudo ./driver/boot/mongos-router-sg.sh

chmod +x driver/boot/mongos-expres-io.sh && sudo ./driver/boot/mongos-expres-io.sh

echo "Master boot successfully!"
