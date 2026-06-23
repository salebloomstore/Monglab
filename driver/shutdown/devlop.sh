#!/bin/bash

set -e

chmod +x driver/shutdown/devlop-router-io.sh && sudo ./driver/shutdown/devlop-router-io.sh
chmod +x driver/shutdown/mongos-expres-io.sh && sudo ./driver/shutdown/mongos-expres-io.sh

echo "devlop-router-io boot successfully!"
