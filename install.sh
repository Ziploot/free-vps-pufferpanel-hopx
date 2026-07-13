#!/bin/bash
# ZipLoot Linux/macOS 1-Click Hopx VPS Configurator
echo "=============================================="
echo "⚡ ZipLoot - Linux/macOS Auto-Installer ⚡"
echo "=============================================="

PROJECT_DIR="$(pwd)/free-vps-hopx-project"
mkdir -p "$PROJECT_DIR"
cd "$PROJECT_DIR"

curl -sL "https://raw.githubusercontent.com/Ziploot/free-vps-pufferpanel-hopx/main/setup.sh" -o setup.sh
chmod +x setup.sh

echo "✅ Local setup script successfully configured!"
echo "Upload setup.sh to your Hopx.ai sandbox and execute it to install PufferPanel & Cloudflare Tunnel!"
