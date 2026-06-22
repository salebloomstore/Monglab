#!/bin/bash

set -e

find . -type f -name "*.sh" -exec chmod +x {} \;

chmod +x driver/shutdown/sharde-matter-hn.sh && sudo driver/shutdown/sharde-matter-hn.sh
chmod +x driver/boot/sharde-matter-hn.sh && sudo driver/boot/sharde-matter-hn.sh

echo "sharde-matter-hn reboot successfully!"
