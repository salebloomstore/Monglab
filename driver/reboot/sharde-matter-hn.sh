#!/bin/bash

set -e

cd "$(dirname "$0")"

find . -type f -name "*.sh" -exec chmod +x {} \;

chmod +x ../shutdown/sharde-matter-hn.sh && sudo ../shutdown/sharde-matter-hn.sh
chmod +x ../boot/sharde-matter-hn.sh && sudo ../boot/sharde-matter-hn.sh

echo "sharde-matter-hn reboot successfully!"
