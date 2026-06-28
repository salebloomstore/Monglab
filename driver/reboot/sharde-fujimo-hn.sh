#!/bin/bash

set -e

cd "$(dirname "$0")"

find . -type f -name "*.sh" -exec chmod +x {} \;

chmod +x ../shutdown/sharde-fujimo-hn.sh && sudo ../shutdown/sharde-fujimo-hn.sh
chmod +x ../boot/sharde-fujimo-hn.sh && sudo ../boot/sharde-fujimo-hn.sh

echo "sharde-fujimo-hn reboot successfully!"
