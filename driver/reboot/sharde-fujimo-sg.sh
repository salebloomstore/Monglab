#!/bin/bash

set -e

find . -type f -name "*.sh" -exec chmod +x {} \;

chmod +x driver/shutdown/sharde-fujimo-sg.sh && sudo driver/shutdown/sharde-fujimo-sg.sh
chmod +x driver/boot/sharde-fujimo-sg.sh && sudo driver/boot/sharde-fujimo-sg.sh

echo "sharde-fujimo-sg reboot successfully!"
