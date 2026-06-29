#!/bin/bash

set -e

cd "$(dirname "$0")"

find . -type f -name "*.sh" -exec chmod +x {} \;

SOURCE="../../server/keygen/keyfile/mongo-keyfile"

for DIR in \
  ../../server/mongos-router-{dn,hn,sg} \
  ../../server/sharde-everes-{dn,hn,sg} \
  ../../server/sharde-fansip-{dn,hn,sg} \
  ../../server/sharde-fujimo-{dn,hn,sg} \
  ../../server/sharde-matter-{dn,hn,sg}
do
  TARGET="$DIR/keyfile/mongo-keyfile"
  mkdir -p "$(dirname "$TARGET")"

  cp "$SOURCE" "$TARGET"
  chown 999:999 "$TARGET"
  chmod 400 "$TARGET"
done

chmod +x sharde-everes-dn.sh && sudo ./sharde-everes-dn.sh
chmod +x sharde-everes-hn.sh && sudo ./sharde-everes-hn.sh
chmod +x sharde-everes-sg.sh && sudo ./sharde-everes-sg.sh

chmod +x sharde-fansip-dn.sh && sudo ./sharde-fansip-dn.sh
chmod +x sharde-fansip-hn.sh && sudo ./sharde-fansip-hn.sh
chmod +x sharde-fansip-sg.sh && sudo ./sharde-fansip-sg.sh

chmod +x sharde-fujimo-dn.sh && sudo ./sharde-fujimo-dn.sh
chmod +x sharde-fujimo-hn.sh && sudo ./sharde-fujimo-hn.sh
chmod +x sharde-fujimo-sg.sh && sudo ./sharde-fujimo-sg.sh

chmod +x sharde-matter-dn.sh && sudo ./sharde-matter-dn.sh
chmod +x sharde-matter-hn.sh && sudo ./sharde-matter-hn.sh
chmod +x sharde-matter-sg.sh && sudo ./sharde-matter-sg.sh

chmod +x mongos-router-dn.sh && sudo ./mongos-router-dn.sh
chmod +x mongos-router-hn.sh && sudo ./mongos-router-hn.sh
chmod +x mongos-router-sg.sh && sudo ./mongos-router-sg.sh

chmod +x mongos-expres-io.sh && sudo ./mongos-expres-io.sh

echo "Master boot successfully!"
