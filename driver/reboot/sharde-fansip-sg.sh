#!/bin/bash

set -e

find . -type f -name "*.sh" -exec chmod +x {} \;

chmod +x driver/shutdown/sharde-fansip-sg.sh && sudo driver/shutdown/sharde-fansip-sg.sh
chmod +x driver/boot/sharde-fansip-sg.sh && sudo driver/boot/sharde-fansip-sg.sh

echo "sharde-fansip-sg reboot successfully!"
