#!/bin/bash

set -e

find . -type f -name "*.sh" -exec chmod +x {} \;

chmod +x driver/shutdown/sharde-matter-sg.sh && sudo driver/shutdown/sharde-matter-sg.sh
chmod +x driver/boot/sharde-matter-sg.sh && sudo driver/boot/sharde-matter-sg.sh

echo "sharde-matter-sg reboot successfully!"
