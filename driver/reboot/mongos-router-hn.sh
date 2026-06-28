#!/bin/bash

set -e

cd "$(dirname "$0")"

find . -type f -name "*.sh" -exec chmod +x {} \;

chmod +x ../shutdown/mongos-router-hn.sh && sudo ../shutdown/mongos-router-hn.sh
chmod +x ../boot/mongos-router-hn.sh && sudo ../boot/mongos-router-hn.sh

echo "mongos-router-hn reboot successfully!"
