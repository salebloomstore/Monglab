#!/bin/bash

set -e

find . -type f -name "*.sh" -exec chmod +x {} \;

chmod +x server/sharde-everes-dn.sh && sudo ./server/sharde-everes-dn.sh
chmod +x server/sharde-everes-hn.sh && sudo ./server/sharde-everes-hn.sh
chmod +x server/sharde-everes-sg.sh && sudo ./server/sharde-everes-sg.sh

chmod +x server/sharde-fansip-dn.sh && sudo ./server/sharde-fansip-dn.sh
chmod +x server/sharde-fansip-hn.sh && sudo ./server/sharde-fansip-hn.sh
chmod +x server/sharde-fansip-sg.sh && sudo ./server/sharde-fansip-sg.sh

chmod +x server/sharde-fujimo-dn.sh && sudo ./server/sharde-fujimo-dn.sh
chmod +x server/sharde-fujimo-hn.sh && sudo ./server/sharde-fujimo-hn.sh
chmod +x server/sharde-fujimo-sg.sh && sudo ./server/sharde-fujimo-sg.sh

echo "Master downed successfully!"
