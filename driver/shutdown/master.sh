#!/bin/bash

set -e

find . -type f -name "*.sh" -exec chmod +x {} \;

chmod +x driver/sharde-everes-dn.sh && sudo ./driver/sharde-everes-dn.sh
chmod +x driver/sharde-everes-hn.sh && sudo ./driver/sharde-everes-hn.sh
chmod +x driver/sharde-everes-sg.sh && sudo ./driver/sharde-everes-sg.sh

chmod +x driver/sharde-fansip-dn.sh && sudo ./driver/sharde-fansip-dn.sh
chmod +x driver/sharde-fansip-hn.sh && sudo ./driver/sharde-fansip-hn.sh
chmod +x driver/sharde-fansip-sg.sh && sudo ./driver/sharde-fansip-sg.sh

chmod +x driver/sharde-fujimo-dn.sh && sudo ./driver/sharde-fujimo-dn.sh
chmod +x driver/sharde-fujimo-hn.sh && sudo ./driver/sharde-fujimo-hn.sh
chmod +x driver/sharde-fujimo-sg.sh && sudo ./driver/sharde-fujimo-sg.sh

echo "Master downed successfully!"
