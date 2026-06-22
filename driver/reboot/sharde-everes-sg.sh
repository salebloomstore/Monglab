#!/bin/bash

set -e

find . -type f -name "*.sh" -exec chmod +x {} \;

chmod +x ../shutdown/sharde-everes-sg.sh && sudo ../shutdown/sharde-everes-sg.sh
chmod +x ../boot/sharde-everes-sg.sh && sudo ../boot/sharde-everes-sg.sh

echo "sharde-everes-sg reboot successfully!"
