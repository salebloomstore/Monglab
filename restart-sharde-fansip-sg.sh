#!/bin/bash

set -e

find . -type f -name "*.sh" -exec chmod +x {} \;

chmod +x down-sharde-fansip-sg.sh && sudo ./down-sharde-fansip-sg.sh
chmod +x start-sharde-fansip-sg.sh && sudo ./start-sharde-fansip-sg.sh

echo "sharde-fansip-sg restarted successfully!"
