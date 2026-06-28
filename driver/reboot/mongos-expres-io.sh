#!/bin/bash

set -e

cd "$(dirname "$0")"

find . -type f -name "*.sh" -exec chmod +x {} \;

chmod +x ../shutdown/mongos-expres-io.sh && sudo ../shutdown/mongos-expres-io.sh
chmod +x ../boot/mongos-expres-io.sh && sudo ../boot/mongos-expres-io.sh

echo "mongos-expres-io reboot successfully!"
