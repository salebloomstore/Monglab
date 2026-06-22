#!/bin/bash

set -e

chmod +x driver/shutdown/keygen.sh && sudo driver/shutdown/keygen.sh
chmod +x driver/boot/keygen.sh && sudo driver/boot/keygen.sh

echo "Keygen reboot successfully!"
