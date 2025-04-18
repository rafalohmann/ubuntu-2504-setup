#!/bin/bash
set -e

echo "[*] Downloading Google Chrome .deb package..."

wget -O /tmp/google-chrome.deb https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb

echo "[*] Installing Google Chrome..."
sudo apt install -y /tmp/google-chrome.deb

echo "[*] Cleaning up..."
rm /tmp/google-chrome.deb

echo "[✓] Google Chrome installed successfully."
