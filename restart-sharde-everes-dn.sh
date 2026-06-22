#!/bin/bash

set -e

find . -type f -name "*.sh" -exec chmod +x {} \;

chmod +x down-sharde-everes-dn.sh && sudo ./down-sharde-everes-dn.sh
chmod +x start-sharde-everes-dn.sh && sudo ./start-sharde-everes-dn.sh

echo "sharde-everes-dn restarted successfully!"
