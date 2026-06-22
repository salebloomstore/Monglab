#!/bin/bash

set -e

find . -type f -name "*.sh" -exec chmod +x {} \;

chmod +x down-sharde-fujimo-hn.sh && sudo ./down-sharde-fujimo-hn.sh
chmod +x start-sharde-fujimo-hn.sh && sudo ./start-sharde-fujimo-hn.sh

echo "sharde-fujimo-hn restarted successfully!"
