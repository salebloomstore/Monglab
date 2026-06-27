#!/bin/bash

set -e

rm -rf server/keygen/keyfile/mongo-keyfile
rm -rf server/devlop-router-io/keyfile/mongo-keyfile

rm -rf server/mongos-router-dn/keyfile/mongo-keyfile
rm -rf server/mongos-router-hn/keyfile/mongo-keyfile
rm -rf server/mongos-router-sg/keyfile/mongo-keyfile

rm -rf server/sharde-everes-dn/keyfile/mongo-keyfile
rm -rf server/sharde-everes-hn/keyfile/mongo-keyfile
rm -rf server/sharde-everes-sg/keyfile/mongo-keyfile

rm -rf server/sharde-fansip-dn/keyfile/mongo-keyfile
rm -rf server/sharde-fansip-hn/keyfile/mongo-keyfile
rm -rf server/sharde-fansip-sg/keyfile/mongo-keyfile

rm -rf server/sharde-fujimo-dn/keyfile/mongo-keyfile
rm -rf server/sharde-fujimo-hn/keyfile/mongo-keyfile
rm -rf server/sharde-fujimo-sg/keyfile/mongo-keyfile

rm -rf server/sharde-matter-dn/keyfile/mongo-keyfile
rm -rf server/sharde-matter-hn/keyfile/mongo-keyfile
rm -rf server/sharde-matter-sg/keyfile/mongo-keyfile

echo "Keygen shutdowned successfully!"
