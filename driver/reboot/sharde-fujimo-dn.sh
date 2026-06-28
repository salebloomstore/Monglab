#!/bin/bash

set -e

cd "$(dirname "$0")"

find . -type f -name "*.sh" -exec chmod +x {} \;

chmod +x ../shutdown/sharde-fujimo-dn.sh && sudo ../shutdown/sharde-fujimo-dn.sh
chmod +x ../boot/sharde-fujimo-dn.sh && sudo ../boot/sharde-fujimo-dn.sh

echo "sharde-fujimo-dn reboot successfully!"
