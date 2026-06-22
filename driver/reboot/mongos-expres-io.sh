#!/bin/bash

set -e

find . -type f -name "*.sh" -exec chmod +x {} \;

chmod +x driver/shutdown/mongos-expres-io.sh && sudo driver/shutdown/mongos-expres-io.sh
chmod +x driver/boot/mongos-expres-io.sh && sudo driver/boot/mongos-expres-io.sh

echo "mongos-expres-io reboot successfully!"
