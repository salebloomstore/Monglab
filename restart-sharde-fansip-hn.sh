#!/bin/bash

set -e

find . -type f -name "*.sh" -exec chmod +x {} \;

chmod +x down-sharde-fansip-hn.sh && sudo ./down-sharde-fansip-hn.sh
chmod +x start-sharde-fansip-hn.sh && sudo ./start-sharde-fansip-hn.sh

echo "sharde-fansip-hn restarted successfully!"
