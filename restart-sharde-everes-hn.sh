#!/bin/bash

set -e

find . -type f -name "*.sh" -exec chmod +x {} \;

chmod +x down-sharde-everes-hn.sh && sudo ./down-sharde-everes-hn.sh
chmod +x start-sharde-everes-hn.sh && sudo ./start-sharde-everes-hn.sh

echo "sharde-everes-hn restarted successfully!"
