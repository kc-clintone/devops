#!/usr/bin/env bash

set -e

echo "Starting development environment setup..."

# --------------------------------------------------
# Update system
# --------------------------------------------------
echo "📦 Updating system packages..."
sudo apt update && sudo apt upgrade -y

# --------------------------------------------------
# Install essential tools
# --------------------------------------------------
echo "🔧 Installing base development tools..."
sudo apt install -y \
    git \
    curl \
    wget \
    unzip \
    build-essential \
    ca-certificates \
    gnupg \
    lsb-release

# --------------------------------------------------
# Install Go
# --------------------------------------------------
echo "🐹 Installing Go..."
GO_VERSION="1.24.0"

wget https://go.dev/dl/go${GO_VERSION}.linux-amd64.tar.gz
sudo rm -rf /usr/local/go
sudo tar -C /usr/local -xzf go${GO_VERSION}.linux-amd64.tar.gz

echo 'export PATH=$PATH:/usr/local/go/bin:$HOME/go/bin' >> ~/.bashrc
export PATH=$PATH:/usr/local/go/bin:$HOME/go/bin

rm go${GO_VERSION}.linux-amd64.tar.gz

# --------------------------------------------------
# Install Docker
# --------------------------------------------------
echo "🐳 Installing Docker..."

curl -fsSL https://get.docker.com | sudo sh

sudo usermod -aG docker $USER

# --------------------------------------------------
# Install Node.js (LTS)
# --------------------------------------------------
echo "🟢 Installing Node.js..."

curl -fsSL https://deb.nodesource.com/setup_lts.x | sudo -E bash -
sudo apt install -y nodejs

# --------------------------------------------------
# Install useful CLI tools
# --------------------------------------------------
echo "🧰 Installing CLI tools..."

sudo apt install -y \
    htop \
    tree \
    jq \
    ripgrep \
    fzf

# --------------------------------------------------
# Verify installs
# --------------------------------------------------
echo "✅ Verifying installations..."

git --version
go version
node -v
npm -v
docker --version

# --------------------------------------------------
# Done
# --------------------------------------------------
echo ""
echo "🎉 Setup complete!"
echo "⚠️ Please log out and log back in for Docker permissions."
