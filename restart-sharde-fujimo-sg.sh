#!/bin/bash

set -e

find . -type f -name "*.sh" -exec chmod +x {} \;

chmod +x down-sharde-fujimo-sg.sh && sudo ./down-sharde-fujimo-sg.sh
chmod +x start-sharde-fujimo-sg.sh && sudo ./start-sharde-fujimo-sg.sh

echo "sharde-fujimo-sg restarted successfully!"
