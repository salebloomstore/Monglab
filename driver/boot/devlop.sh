#!/bin/bash

set -e

SOURCE="server/keygen/keyfile/mongo-keyfile"
TARGET="server/devlop-router-io/keyfile/mongo-keyfile"
mkdir -p "$(dirname "$TARGET")"
cp "$SOURCE" "$TARGET"
chown 999:999 "$TARGET"
chmod 400 "$TARGET"

chmod +x driver/boot/devlop-router-io.sh && sudo ./driver/boot/devlop-router-io.sh
chmod +x driver/boot/mongos-expres-io.sh && sudo ./driver/boot/mongos-expres-io.sh

echo "devlop-router-io boot successfully!"
