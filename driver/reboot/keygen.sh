#!/bin/bash

set -e


chmod +x ../shutdown/keygen.sh && sudo ../shutdown/keygen.sh
chmod +x ../boot/keygen.sh && sudo ../boot/keygen.sh

echo "Keygen reboot successfully!"
