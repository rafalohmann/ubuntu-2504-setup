#!/bin/bash
set -e

echo "[*] Updating and upgrading the system..."
sudo apt update && sudo apt -y full-upgrade

echo "[*] Removing unused packages..."
sudo apt -y autoremove
sudo apt -y autoclean
