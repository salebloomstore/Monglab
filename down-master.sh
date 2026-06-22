#!/bin/bash

set -e

find . -type f -name "*.sh" -exec chmod +x {} \;

chmod +x down-sharde-everes-dn.sh && sudo ./down-sharde-everes-dn.sh
chmod +x down-sharde-everes-hn.sh && sudo ./down-sharde-everes-hn.sh
chmod +x down-sharde-everes-sg.sh && sudo ./down-sharde-everes-sg.sh

sudo chown 1000:1000 -R . && sudo chmod 777 -R .

echo "Master downed successfully!"
