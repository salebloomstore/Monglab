#!/bin/bash

set -e

find . -type f -name "*.sh" -exec chmod +x {} \;

chmod +x ../shutdown/sharde-fansip-sg.sh && sudo ../shutdown/sharde-fansip-sg.sh
chmod +x ../boot/sharde-fansip-sg.sh && sudo ../boot/sharde-fansip-sg.sh

echo "sharde-fansip-sg reboot successfully!"
