#!/bin/bash

set -e

find . -type f -name "*.sh" -exec chmod +x {} \;

chmod +x down-master.sh && sudo ./down-master.sh
chmod +x start-master.sh && sudo ./start-master.sh

echo "Master restarted successfully!"
