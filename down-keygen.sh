#!/bin/bash

set -e

rm -rf keygen/keyfile/mongo-keyfile

sudo chown 1000:1000 -R keygen && sudo chmod 777 -R keygen

echo "Keygen downed successfully!"
