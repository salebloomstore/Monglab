#!/bin/bash

set -e

find . -type f -name "*.sh" -exec chmod +x {} \;

chmod +x ../shutdown/master.sh && sudo ../shutdown/master.sh
chmod +x ../boot/master.sh && sudo ../boot/master.sh

echo "Master reboot successfully!"
