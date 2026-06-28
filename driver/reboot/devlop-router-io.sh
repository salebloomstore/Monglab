#!/bin/bash

set -e

cd "$(dirname "$0")"

find . -type f -name "*.sh" -exec chmod +x {} \;

chmod +x ../shutdown/devlop-router-io.sh && sudo ../shutdown/devlop-router-io.sh
chmod +x ../boot/devlop-router-io.sh && sudo ../boot/devlop-router-io.sh

echo "devlop-router-io reboot successfully!"
