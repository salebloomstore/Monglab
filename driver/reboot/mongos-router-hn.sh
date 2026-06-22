#!/bin/bash

set -e

find . -type f -name "*.sh" -exec chmod +x {} \;

chmod +x driver/shutdown/mongos-router-hn.sh && sudo driver/shutdown/mongos-router-hn.sh
chmod +x driver/boot/mongos-router-hn.sh && sudo driver/boot/mongos-router-hn.sh

echo "mongos-router-hn reboot successfully!"
