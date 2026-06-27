#!/bin/bash

set -e

for name in \
  keygen \
  devlop-router-io \
  mongos-router-{dn,hn,sg} \
  sharde-everes-{dn,hn,sg} \
  sharde-fansip-{dn,hn,sg} \
  sharde-fujimo-{dn,hn,sg} \
  sharde-matter-{dn,hn,sg}
do
  rm -rf "server/$name/keyfile/mongo-keyfile"
done

echo "Keygen shutdowned successfully!"
