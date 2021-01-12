#! /bin/bash

sudo rm /var/lib/apt/lists/* > /dev/null 2>&1

echo "[INFO] Starting update..."
sudo apt-get update > /dev/null 2>&1
echo "[INFO] Update complete..."