#!/bin/bash

set -e

find . -type f -name "*.sh" -exec chmod +x {} \;

chmod +x down-sharde-fansip-dn.sh && sudo ./down-sharde-fansip-dn.sh
chmod +x start-sharde-fansip-dn.sh && sudo ./start-sharde-fansip-dn.sh

echo "sharde-fansip-dn restarted successfully!"
