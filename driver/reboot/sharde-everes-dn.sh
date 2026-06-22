#!/bin/bash

set -e

find . -type f -name "*.sh" -exec chmod +x {} \;

chmod +x ../shutdown/sharde-everes-dn.sh && sudo ../shutdown/sharde-everes-dn.sh
chmod +x ../boot/sharde-everes-dn.sh && sudo ../boot/sharde-everes-dn.sh

echo "sharde-everes-dn reboot successfully!"
