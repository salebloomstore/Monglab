#!/bin/bash

set -e

find . -type f -name "*.sh" -exec chmod +x {} \;

chmod +x driver/shutdown/mongos-router-dn.sh && sudo driver/shutdown/mongos-router-dn.sh
chmod +x driver/boot/mongos-router-dn.sh && sudo driver/boot/mongos-router-dn.sh

echo "mongos-router-dn reboot successfully!"
