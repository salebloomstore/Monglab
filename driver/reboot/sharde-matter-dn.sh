#!/bin/bash

set -e

find . -type f -name "*.sh" -exec chmod +x {} \;

chmod +x driver/shutdown/sharde-matter-dn.sh && sudo driver/shutdown/sharde-matter-dn.sh
chmod +x driver/boot/sharde-matter-dn.sh && sudo driver/boot/sharde-matter-dn.sh

echo "sharde-matter-dn reboot successfully!"
