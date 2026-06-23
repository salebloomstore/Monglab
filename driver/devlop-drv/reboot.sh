#!/bin/bash

set -e

find . -type f -name "*.sh" -exec chmod +x {} \;

chmod +x driver/devlop-drv/shutdown.sh && sudo driver/devlop-drv/shutdown.sh
chmod +x driver/devlop-drv/boot.sh && sudo driver/devlop-drv/boot.sh

echo "devlop-router-io reboot successfully!"
