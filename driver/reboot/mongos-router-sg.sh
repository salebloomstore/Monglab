#!/bin/bash

set -e

cd "$(dirname "$0")"

find . -type f -name "*.sh" -exec chmod +x {} \;

chmod +x ../shutdown/mongos-router-sg.sh && sudo ../shutdown/mongos-router-sg.sh
chmod +x ../boot/mongos-router-sg.sh && sudo ../boot/mongos-router-sg.sh

echo "mongos-router-sg reboot successfully!"
