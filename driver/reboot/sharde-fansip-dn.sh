#!/bin/bash

set -e

find . -type f -name "*.sh" -exec chmod +x {} \;

chmod +x ../shutdown/sharde-fansip-dn.sh && sudo ../shutdown/sharde-fansip-dn.sh
chmod +x ../boot/sharde-fansip-dn.sh && sudo ../boot/sharde-fansip-dn.sh

echo "sharde-fansip-dn reboot successfully!"
