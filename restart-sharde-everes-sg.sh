#!/bin/bash

set -e

find . -type f -name "*.sh" -exec chmod +x {} \;

chmod +x down-sharde-everes-sg.sh && sudo ./down-sharde-everes-sg.sh
chmod +x start-sharde-everes-sg.sh && sudo ./start-sharde-everes-sg.sh

echo "sharde-everes-sg restarted successfully!"
