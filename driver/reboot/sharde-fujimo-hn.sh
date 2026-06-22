#!/bin/bash

set -e

find . -type f -name "*.sh" -exec chmod +x {} \;

chmod +x driver/shutdown/sharde-fujimo-hn.sh && sudo driver/shutdown/sharde-fujimo-hn.sh
chmod +x driver/boot/sharde-fujimo-hn.sh && sudo driver/boot/sharde-fujimo-hn.sh

echo "sharde-fujimo-hn reboot successfully!"
