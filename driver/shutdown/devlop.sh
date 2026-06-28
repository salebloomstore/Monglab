#!/bin/bash

set -e

cd "$(dirname "$0")"

chmod +x devlop-router-io.sh && sudo ./devlop-router-io.sh
chmod +x mongos-expres-io.sh && sudo ./mongos-expres-io.sh

echo "devlop-router-io boot successfully!"
