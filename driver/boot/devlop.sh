#!/bin/bash

set -e

cd "$(dirname "$0")"

SOURCE="../../server/keygen/keyfile/mongo-keyfile"
TARGET="../../server/devlop-router-io/keyfile/mongo-keyfile"
mkdir -p "$(dirname "$TARGET")"
cp "$SOURCE" "$TARGET"
chown 999:999 "$TARGET"
chmod 400 "$TARGET"

chmod +x devlop-router-io.sh && sudo ./devlop-router-io.sh
chmod +x mongos-expres-io.sh && sudo ./mongos-expres-io.sh

echo "devlop-router-io boot successfully!"
