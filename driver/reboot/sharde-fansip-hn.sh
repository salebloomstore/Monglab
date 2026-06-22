#!/bin/bash

set -e

find . -type f -name "*.sh" -exec chmod +x {} \;

chmod +x driver/shutdown/sharde-fansip-hn.sh && sudo driver/shutdown/sharde-fansip-hn.sh
chmod +x driver/boot/sharde-fansip-hn.sh && sudo driver/boot/sharde-fansip-hn.sh

echo "sharde-fansip-hn reboot successfully!"
