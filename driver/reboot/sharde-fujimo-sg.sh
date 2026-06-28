#!/bin/bash

set -e

cd "$(dirname "$0")"

find . -type f -name "*.sh" -exec chmod +x {} \;

chmod +x ../shutdown/sharde-fujimo-sg.sh && sudo ../shutdown/sharde-fujimo-sg.sh
chmod +x ../boot/sharde-fujimo-sg.sh && sudo ../boot/sharde-fujimo-sg.sh

echo "sharde-fujimo-sg reboot successfully!"
