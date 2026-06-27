#!/bin/bash

set -e

echo 'WAITING FOR KEYFILE...'
while [ ! -f /etc/mongo-keyfile ]; do sleep 2; done
echo 'KEYFILE CREATED'

echo 'WAITING FOR STARTING UP SHARDE-MATTER-SG IN PROGRESS WITH AUTH'
until mongosh --quiet --host ${SHARDE_MATTER_SG_ADRS}:${SHARDE_MATTER_SG_PORT_OF} -u ${MONGO_ADMINIST_SHARDE_MATTER} -p ${MONGO_PASSWORD_SHARDE_MATTER} --authenticationDatabase admin --eval 'db.adminCommand({ ping: 1 })' > /dev/null 2>&1; do sleep 2; done
echo 'THE SHARDE-MATTER-SG HAVE FINISHED BOOTING UP WITH AUTH'

echo 'CONFIGURATING CONFIG SERVER FOR MONGOS-ROUTER-HN'
mongos --configdb matterRS/${SHARDE_MATTER_HN_ADRS}:${SHARDE_MATTER_HN_PORT_OF},${SHARDE_MATTER_HN_ADRS}:${SHARDE_MATTER_HN_PORT_OF},${SHARDE_MATTER_SG_ADRS}:${SHARDE_MATTER_SG_PORT_OF} --bind_ip_all --port ${MONGOS_ROUTER_HN_PORT_OF} --keyFile /etc/mongo-keyfile --fork --logpath /tmp/mongod.log
until mongosh --quiet --port ${MONGOS_ROUTER_HN_PORT_OF} -u ${MONGO_ADMINIST_SHARDE_MATTER} -p ${MONGO_PASSWORD_SHARDE_MATTER} --authenticationDatabase admin --eval 'db.adminCommand({ ping: 1 }).ok' | grep 1 > /dev/null; do sleep 2; done
echo 'CONFIG-SERVER-HN FOR MONGOS-ROUTER-HN CONFIGURATION COMPLETED'

echo 'WAITING FOR STARTING UP SHARDE-EVERES-SG IN PROGRESS WITH AUTH'
until mongosh --quiet --host ${SHARDE_EVERES_SG_ADRS}:${SHARDE_EVERES_SG_PORT_OF} -u ${MONGO_ADMINIST_SHARDE_EVERES} -p ${MONGO_PASSWORD_SHARDE_EVERES} --authenticationDatabase admin --eval 'db.adminCommand({ ping: 1 })' > /dev/null 2>&1; do sleep 2; done
echo 'THE SHARDE-EVERES-SG HAVE FINISHED BOOTING UP WITH AUTH'

echo 'WAITING FOR STARTING UP SHARDE-FANSIP-SG IN PROGRESS WITH AUTH'
until mongosh --quiet --host ${SHARDE_FANSIP_SG_ADRS}:${SHARDE_FANSIP_SG_PORT_OF} -u ${MONGO_ADMINIST_SHARDE_FANSIP} -p ${MONGO_PASSWORD_SHARDE_FANSIP} --authenticationDatabase admin --eval 'db.adminCommand({ ping: 1 })' > /dev/null 2>&1; do sleep 2; done
echo 'THE SHARDE-FANSIP-SG HAVE FINISHED BOOTING UP WITH AUTH'

echo 'WAITING FOR STARTING UP SHARDE-FUJIMO-SG IN PROGRESS WITH AUTH'
until mongosh --quiet --host ${SHARDE_FUJIMO_SG_ADRS}:${SHARDE_FUJIMO_SG_PORT_OF} -u ${MONGO_ADMINIST_SHARDE_FUJIMO} -p ${MONGO_PASSWORD_SHARDE_FUJIMO} --authenticationDatabase admin --eval 'db.adminCommand({ ping: 1 })' > /dev/null 2>&1; do sleep 2; done
echo 'THE SHARDE-FUJIMO-SG HAVE FINISHED BOOTING UP WITH AUTH'

echo 'WAITING FOR STARTING UP MONGOS-ROUTER-HN IN PROGRESS'
mongosh --port ${MONGOS_ROUTER_HN_PORT_OF} -u ${MONGO_ADMINIST_SHARDE_MATTER} -p ${MONGO_PASSWORD_SHARDE_MATTER} --authenticationDatabase admin
echo 'THE MONGOS-ROUTER-HN HAVE FINISHED BOOTING UP'

tail -f /dev/null
