#!/bin/bash

echo 'Waiting for mongos startup...'

until nc -z \"$${MONGOS_ROUTER_DN_ADRS}\" \"$${MONGOS_ROUTER_DN_PORT_OF}\"; do sleep 2; done
until nc -z \"$${MONGOS_ROUTER_HN_ADRS}\" \"$${MONGOS_ROUTER_HN_PORT_OF}\"; do sleep 2; done
until nc -z \"$${MONGOS_ROUTER_SG_ADRS}\" \"$${MONGOS_ROUTER_SG_PORT_OF}\"; do sleep 2; done

echo 'mongos is ready'

exec node app
