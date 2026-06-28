#!/bin/bash

set -e

cd "$(dirname "$0")"

find . -type f -name "*.sh" -exec chmod +x {} \;

chmod +x ../shutdown/sharde-fansip-hn.sh && sudo ../shutdown/sharde-fansip-hn.sh
chmod +x ../boot/sharde-fansip-hn.sh && sudo ../boot/sharde-fansip-hn.sh

echo "sharde-fansip-hn reboot successfully!"
