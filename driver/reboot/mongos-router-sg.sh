#!/bin/bash

set -e

find . -type f -name "*.sh" -exec chmod +x {} \;

chmod +x driver/shutdown/mongos-router-sg.sh && sudo driver/shutdown/mongos-router-sg.sh
chmod +x driver/boot/mongos-router-sg.sh && sudo driver/boot/mongos-router-sg.sh

echo "mongos-router-sg reboot successfully!"
