#!/bin/bash

set -e

find . -type f -name "*.sh" -exec chmod +x {} \;

chmod +x driver/shutdown/sharde-fansip-dn.sh && sudo driver/shutdown/sharde-fansip-dn.sh
chmod +x driver/boot/sharde-fansip-dn.sh && sudo driver/boot/sharde-fansip-dn.sh

echo "sharde-fansip-dn reboot successfully!"
