#!/bin/bash

set -e

find . -type f -name "*.sh" -exec chmod +x {} \;

chmod +x driver/shutdown/sharde-everes-dn.sh && sudo ./driver/shutdown/sharde-everes-dn.sh
chmod +x driver/shutdown/sharde-everes-hn.sh && sudo ./driver/shutdown/sharde-everes-hn.sh
chmod +x driver/shutdown/sharde-everes-sg.sh && sudo ./driver/shutdown/sharde-everes-sg.sh

chmod +x driver/shutdown/sharde-fansip-dn.sh && sudo ./driver/shutdown/sharde-fansip-dn.sh
chmod +x driver/shutdown/sharde-fansip-hn.sh && sudo ./driver/shutdown/sharde-fansip-hn.sh
chmod +x driver/shutdown/sharde-fansip-sg.sh && sudo ./driver/shutdown/sharde-fansip-sg.sh

chmod +x driver/shutdown/sharde-fujimo-dn.sh && sudo ./driver/shutdown/sharde-fujimo-dn.sh
chmod +x driver/shutdown/sharde-fujimo-hn.sh && sudo ./driver/shutdown/sharde-fujimo-hn.sh
chmod +x driver/shutdown/sharde-fujimo-sg.sh && sudo ./driver/shutdown/sharde-fujimo-sg.sh

chmod +x driver/shutdown/sharde-matter-dn.sh && sudo ./driver/shutdown/sharde-matter-dn.sh
chmod +x driver/shutdown/sharde-matter-hn.sh && sudo ./driver/shutdown/sharde-matter-hn.sh
chmod +x driver/shutdown/sharde-matter-sg.sh && sudo ./driver/shutdown/sharde-matter-sg.sh

chmod +x driver/shutdown/mongos-router-dn.sh && sudo ./driver/shutdown/mongos-router-dn.sh
chmod +x driver/shutdown/mongos-router-hn.sh && sudo ./driver/shutdown/mongos-router-hn.sh
chmod +x driver/shutdown/mongos-router-sg.sh && sudo ./driver/shutdown/mongos-router-sg.sh

chmod +x driver/shutdown/mongos-expres-io.sh && sudo ./driver/shutdown/mongos-expres-io.sh

echo "Master shutdowned successfully!"
