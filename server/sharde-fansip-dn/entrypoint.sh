#!/bin/bash

set -e

echo 'WAITING FOR KEYFILE...'
while [ ! -f /etc/mongo-keyfile ]; do sleep 2; done
echo 'KEYFILE CREATED'

mkdir -p /data/db

echo 'STARTING UP SHARDE-FANSIP-DN IN PROGRESS WITH NO AUTH'
mongod --replSet fansipRS --bind_ip_all --port ${SHARDE_FANSIP_DN_PORT_OF} --dbpath /data/db --fork --logpath /tmp/mongod.log --shardsvr
echo 'THE SHARDE-FANSIP-DN HAVE FINISHED BOOTING UP WITH NO AUTH'

echo 'WAITING FOR SHARDE-FANSIP-HN'
until mongosh --quiet --host ${SHARDE_FANSIP_HN_ADRS}:${SHARDE_FANSIP_HN_PORT_OF} --eval 'db.adminCommand({ ping: 1 })' > /dev/null 2>&1; do sleep 2; done
echo 'SHARDE-FANSIP-HN READY'

echo 'WAITING FOR SHARDE-FANSIP-SG'
until mongosh --quiet --host ${SHARDE_FANSIP_SG_ADRS}:${SHARDE_FANSIP_SG_PORT_OF} --eval 'db.adminCommand({ ping: 1 })' > /dev/null 2>&1; do sleep 2; done
echo 'SHARDE-FANSIP-SG READY'

echo 'WAITING SHARDE-FANSIP-DN FOR INIT'
mongosh --host ${SHARDE_FANSIP_DN_ADRS}:${SHARDE_FANSIP_DN_PORT_OF} /init/init-sharde-fansip.js
echo 'SHARDE-FANSIP-DN INIT DONE'

echo 'WAITING FOR STARTING UP SHARDE-FANSIP-DN IN PROGRESS WITH AUTH'
mongod --shutdown --dbpath /data/db
while pgrep mongod >/dev/null; do sleep 2; done
mongod --replSet fansipRS --bind_ip_all --port ${SHARDE_FANSIP_DN_PORT_OF} --dbpath /data/db --auth --keyFile /etc/mongo-keyfile --setParameter enableLocalhostAuthBypass=0 --fork --logpath /tmp/mongod.log --shardsvr
until mongosh --quiet --host ${SHARDE_FANSIP_DN_ADRS}:${SHARDE_FANSIP_DN_PORT_OF} --eval 'db.adminCommand({ ping: 1 })' > /dev/null 2>&1; do sleep 2; done
echo 'THE SHARDE-FANSIP-DN HAVE FINISHED BOOTING UP WITH AUTH'

tail -f /dev/null
