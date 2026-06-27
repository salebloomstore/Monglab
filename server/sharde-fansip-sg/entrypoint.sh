#!/bin/bash

set -e

echo 'WAITING FOR KEYFILE...'
while [ ! -f /etc/mongo-keyfile ]; do sleep 2; done
echo 'KEYFILE CREATED'

mkdir -p /data/db

echo 'STARTING UP SHARDE-FANSIP-SG IN PROGRESS WITH NO AUTH'
mongod --replSet fansipRS --bind_ip_all --port ${SHARDE_FANSIP_SG_PORT_OF} --dbpath /data/db --fork --logpath /tmp/mongod.log --shardsvr
echo 'THE SHARDE-FANSIP-SG HAVE FINISHED BOOTING UP WITH NO AUTH'

echo 'WAITING FOR STARTING UP SHARDE-FANSIP-HN IN PROGRESS WITH AUTH'
until mongosh --quiet --host ${SHARDE_FANSIP_HN_ADRS}:${SHARDE_FANSIP_HN_PORT_OF} -u ${MONGO_ADMINIST_SHARDE_FANSIP} -p ${MONGO_PASSWORD_SHARDE_FANSIP} --authenticationDatabase admin --eval 'db.adminCommand({ ping: 1 })' > /dev/null 2>&1; do sleep 2; done
echo 'THE SHARDE-FANSIP-HN HAVE FINISHED BOOTING UP WITH AUTH'

echo 'WAITING FOR STARTING UP SHARDE-FANSIP-SG IN PROGRESS WITH AUTH'
mongod --shutdown --dbpath /data/db
while pgrep mongod >/dev/null; do sleep 2; done
mongod --replSet fansipRS --bind_ip_all --port ${SHARDE_FANSIP_SG_PORT_OF} --dbpath /data/db --auth --keyFile /etc/mongo-keyfile --setParameter enableLocalhostAuthBypass=0 --fork --logpath /tmp/mongod.log --shardsvr
until mongosh --quiet --host ${SHARDE_FANSIP_SG_ADRS}:${SHARDE_FANSIP_SG_PORT_OF} --eval 'db.adminCommand({ ping: 1 })' > /dev/null 2>&1; do sleep 2; done
echo 'THE SHARDE-FANSIP-SG HAVE FINISHED BOOTING UP WITH AUTH'

tail -f /dev/null
