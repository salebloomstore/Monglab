#!/bin/bash

set -e

cd "$(dirname "$0")"

find . -type f -name "*.sh" -exec chmod +x {} \;

chmod +x ../shutdown/sharde-matter-dn.sh && sudo ../shutdown/sharde-matter-dn.sh
chmod +x ../boot/sharde-matter-dn.sh && sudo ../boot/sharde-matter-dn.sh

echo "sharde-matter-dn reboot successfully!"
