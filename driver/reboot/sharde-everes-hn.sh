#!/bin/bash

set -e

cd "$(dirname "$0")"

find . -type f -name "*.sh" -exec chmod +x {} \;

chmod +x ../shutdown/sharde-everes-hn.sh && sudo ../shutdown/sharde-everes-hn.sh
chmod +x ../boot/sharde-everes-hn.sh && sudo ../boot/sharde-everes-hn.sh

echo "sharde-everes-hn reboot successfully!"
