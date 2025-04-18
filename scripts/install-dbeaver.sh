#!/bin/bash
set -e

echo "[*] Downloading DBeaver CE..."

wget -O /tmp/dbeaver-ce.deb https://dbeaver.io/files/dbeaver-ce_latest_amd64.deb

echo "[*] Installing DBeaver CE..."
sudo apt install -y /tmp/dbeaver-ce.deb

echo "[*] Cleaning up..."
rm /tmp/dbeaver-ce.deb

echo "[✓] DBeaver CE installed successfully."
