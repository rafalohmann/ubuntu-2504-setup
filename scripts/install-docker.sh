#!/bin/bash
set -e

echo "[*] Installing Docker Engine..."

# Uninstall all conflicting packages
# for pkg in docker.io docker-doc docker-compose docker-compose-v2 podman-docker containerd runc; do sudo apt-get remove $pkg; done

# Add Docker’s official GPG key
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc

# Add Docker repository
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "${UBUNTU_CODENAME:-$VERSION_CODENAME}") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

# Install Docker packages
sudo apt update
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

# Post-install: enable and start Docker
sudo systemctl enable docker
sudo systemctl start docker

# Optional: add current user to docker group
if ! groups $USER | grep -q "\bdocker\b"; then
  echo "[*] Adding user $USER to docker group (will require re-login)"
  sudo usermod -aG docker $USER
fi

echo "[✓] Docker installed successfully."
