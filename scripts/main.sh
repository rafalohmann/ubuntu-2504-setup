#!/bin/bash
set -e

echo "[*] Updating and upgrading the system..."
sudo apt update && sudo apt -y full-upgrade

echo "[*] Installing basic system utilities and networking tools..."

# Certificate management & OS info utilities
sudo apt install -y \
    ca-certificates \
    lsb-release

# Networking and download tools
sudo apt install -y \
    curl \
    net-tools \
    traceroute \
    telnet

# Archiving utilities
sudo apt install -y \
    p7zip-full \
    p7zip-rar

# Essential development tools
sudo apt install -y \
    build-essential

# Helpful command-line tools
sudo apt install -y \
    nano \
    tree \
    htop

echo "[*] Installing multimedia codecs..."
sudo apt -y install ubuntu-restricted-extras

echo "[*] Installing TLP for battery optimization..."
sudo apt -y install tlp tlp-rdw
sudo tlp start

echo "[*] Showing battery percentage in system tray..."
gsettings set org.gnome.desktop.interface show-battery-percentage true

echo "[*] Configuring Dock to minimize on click..."
gsettings set org.gnome.shell.extensions.dash-to-dock click-action 'minimize'

echo "[*] Customizing Dock appearance..."
gsettings set org.gnome.shell.extensions.dash-to-dock extend-height false
gsettings set org.gnome.shell.extensions.dash-to-dock dock-position BOTTOM
gsettings set org.gnome.shell.extensions.dash-to-dock transparency-mode FIXED
gsettings set org.gnome.shell.extensions.dash-to-dock dash-max-icon-size 64
gsettings set org.gnome.shell.extensions.dash-to-dock unity-backlit-items true

echo "[*] Cleaning up the system..."
sudo apt -y autoclean
sudo apt -y clean
sudo apt -y autoremove

echo "[✓] Ubuntu main setup complete!"
