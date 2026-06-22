#!/bin/bash

set -e

find . -type f -name "*.sh" -exec chmod +x {} \;

chmod +x down-sharde-everes-dn.sh && sudo ./down-sharde-everes-dn.sh
chmod +x down-sharde-everes-hn.sh && sudo ./down-sharde-everes-hn.sh
chmod +x down-sharde-everes-sg.sh && sudo ./down-sharde-everes-sg.sh

chmod +x down-sharde-fansip-dn.sh && sudo ./down-sharde-fansip-dn.sh
chmod +x down-sharde-fansip-hn.sh && sudo ./down-sharde-fansip-hn.sh
chmod +x down-sharde-fansip-sg.sh && sudo ./down-sharde-fansip-sg.sh

chmod +x down-sharde-fujimo-dn.sh && sudo ./down-sharde-fujimo-dn.sh
chmod +x down-sharde-fujimo-hn.sh && sudo ./down-sharde-fujimo-hn.sh
chmod +x down-sharde-fujimo-sg.sh && sudo ./down-sharde-fujimo-sg.sh

echo "Master downed successfully!"
