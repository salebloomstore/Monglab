#!/bin/bash

set -e

find . -type f -name "*.sh" -exec chmod +x {} \;

chmod +x driver/shutdown/sharde-everes-sg.sh && sudo driver/shutdown/sharde-everes-sg.sh
chmod +x driver/boot/sharde-everes-sg.sh && sudo driver/boot/sharde-everes-sg.sh

echo "sharde-everes-sg reboot successfully!"
