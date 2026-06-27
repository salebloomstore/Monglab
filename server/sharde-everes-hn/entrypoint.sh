#!/bin/bash

set -e

echo 'WAITING FOR KEYFILE...'
while [ ! -f /etc/mongo-keyfile ]; do sleep 2; done
echo 'KEYFILE CREATED'

mkdir -p /data/db

echo 'STARTING UP SHARDE-EVERES-HN IN PROGRESS WITH NO AUTH'
mongod --replSet everesRS --bind_ip_all --port ${SHARDE_EVERES_HN_PORT_OF} --dbpath /data/db --fork --logpath /tmp/mongod.log --shardsvr
echo 'THE SHARDE-EVERES-HN HAVE FINISHED BOOTING UP WITH NO AUTH'

echo 'WAITING FOR STARTING UP SHARDE-EVERES-DN IN PROGRESS WITH AUTH'
until mongosh --quiet --host ${SHARDE_EVERES_DN_ADRS}:${SHARDE_EVERES_DN_PORT_OF} -u ${MONGO_ADMINIST_SHARDE_EVERES} -p ${MONGO_PASSWORD_SHARDE_EVERES} --authenticationDatabase admin --eval 'db.adminCommand({ ping: 1 })' > /dev/null 2>&1; do sleep 2; done
echo 'THE SHARDE-EVERES-DN HAVE FINISHED BOOTING UP WITH AUTH'

echo 'WAITING FOR STARTING UP SHARDE-EVERES-HN IN PROGRESS WITH AUTH'
mongod --shutdown --dbpath /data/db
while pgrep mongod >/dev/null; do sleep 2; done
mongod --replSet everesRS --bind_ip_all --port ${SHARDE_EVERES_HN_PORT_OF} --dbpath /data/db --auth --keyFile /etc/mongo-keyfile --setParameter enableLocalhostAuthBypass=0 --fork --logpath /tmp/mongod.log --shardsvr
until mongosh --quiet --host ${SHARDE_EVERES_HN_ADRS}:${SHARDE_EVERES_HN_PORT_OF} --eval 'db.adminCommand({ ping: 1 })' > /dev/null 2>&1; do sleep 2; done
echo 'THE SHARDE-EVERES-HN HAVE FINISHED BOOTING UP WITH AUTH'

tail -f /dev/null
