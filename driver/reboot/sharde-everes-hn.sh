#!/bin/bash

set -e

find . -type f -name "*.sh" -exec chmod +x {} \;

chmod +x driver/shutdown/sharde-everes-hn.sh && sudo driver/shutdown/sharde-everes-hn.sh
chmod +x driver/boot/sharde-everes-hn.sh && sudo driver/boot/sharde-everes-hn.sh

echo "sharde-everes-hn reboot successfully!"
