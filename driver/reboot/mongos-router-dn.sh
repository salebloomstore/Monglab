#!/bin/bash

set -e

cd "$(dirname "$0")"

find . -type f -name "*.sh" -exec chmod +x {} \;

chmod +x ../shutdown/mongos-router-dn.sh && sudo ../shutdown/mongos-router-dn.sh
chmod +x ../boot/mongos-router-dn.sh && sudo ../boot/mongos-router-dn.sh

echo "mongos-router-dn reboot successfully!"
