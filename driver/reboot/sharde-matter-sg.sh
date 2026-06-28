#!/bin/bash

set -e

cd "$(dirname "$0")"

find . -type f -name "*.sh" -exec chmod +x {} \;

chmod +x ../shutdown/sharde-matter-sg.sh && sudo ../shutdown/sharde-matter-sg.sh
chmod +x ../boot/sharde-matter-sg.sh && sudo ../boot/sharde-matter-sg.sh

echo "sharde-matter-sg reboot successfully!"
