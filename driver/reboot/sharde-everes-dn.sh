#!/bin/bash

set -e

find . -type f -name "*.sh" -exec chmod +x {} \;

chmod +x driver/shutdown/sharde-everes-dn.sh && sudo driver/shutdown/sharde-everes-dn.sh
chmod +x driver/boot/sharde-everes-dn.sh && sudo driver/boot/sharde-everes-dn.sh

echo "sharde-everes-dn reboot successfully!"
