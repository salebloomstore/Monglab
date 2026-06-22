#!/bin/bash

set -e

find . -type f -name "*.sh" -exec chmod +x {} \;

chmod +x driver/shutdown/sharde-fujimo-dn.sh && sudo driver/shutdown/sharde-fujimo-dn.sh
chmod +x driver/boot/sharde-fujimo-dn.sh && sudo driver/boot/sharde-fujimo-dn.sh

echo "sharde-fujimo-dn reboot successfully!"
