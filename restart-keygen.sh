#!/bin/bash

set -e


chmod +x down-keygen.sh && sudo ./down-keygen.sh
chmod +x start-keygen.sh && sudo ./start-keygen.sh

echo "Keygen restarted successfully!"
