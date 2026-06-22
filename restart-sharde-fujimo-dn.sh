#!/bin/bash

set -e

find . -type f -name "*.sh" -exec chmod +x {} \;

chmod +x down-sharde-fujimo-dn.sh && sudo ./down-sharde-fujimo-dn.sh
chmod +x start-sharde-fujimo-dn.sh && sudo ./start-sharde-fujimo-dn.sh

echo "sharde-fujimo-dn restarted successfully!"
