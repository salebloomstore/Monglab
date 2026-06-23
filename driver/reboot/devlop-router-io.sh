#!/bin/bash

set -e

find . -type f -name "*.sh" -exec chmod +x {} \;

chmod +x driver/shutdown/devlop-router-io.sh && sudo driver/shutdown/devlop-router-io.sh
chmod +x driver/boot/devlop-router-io.sh && sudo driver/boot/devlop-router-io.sh

echo "devlop-router-io reboot successfully!"
