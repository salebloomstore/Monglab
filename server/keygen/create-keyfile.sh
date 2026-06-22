#!/bin/bash

# =====================================================
# GENERATE MONGODB KEYFILE
# =====================================================

openssl rand -base64 756 > /keyfile/mongo-keyfile

# =====================================================
# SET SECURE PERMISSIONS
# =====================================================

chown 999:999 /keyfile/mongo-keyfile
chmod 400 /keyfile/mongo-keyfile

# =====================================================
# DONE
# =====================================================

echo "KEYFILE CREATED"

docker rm -fv $(hostname)
