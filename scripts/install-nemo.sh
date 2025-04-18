#!/bin/bash
set -e

echo "[*] Installing Nemo..."
sudo apt install -y nemo

echo "[*] Setting Nemo as default file manager..."
xdg-mime default nemo.desktop inode/directory application/x-gnome-saved-search || echo "Warning: Failed to set mime default"
xdg-settings set default-web-browser firefox.desktop || echo "Warning: xdg-settings may not work in headless/tty sessions"

# echo "[*] Optional: remove Nautilus..."
# sudo apt remove -y nautilus
