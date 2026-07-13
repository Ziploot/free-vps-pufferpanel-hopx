#!/usr/bin/env bash
#  ======================================================
#  ZIPLOOT - HOPX.AI FREE VPS CONFIGURATION SCRIPT
#  ======================================================
set -uo pipefail

echo "=============================================="
echo "⚡ ZIPLOOT - Hopx.ai VPS Setup script ⚡"
echo "=============================================="

# Install node dependencies and PM2
echo "Installing Node.js & PM2..."
curl -fsSL https://deb.nodesource.com/setup_20.x | bash -
apt install -y nodejs
npm install -g pm2

# Install Cloudflare Tunnel (cloudflared)
echo "Installing Cloudflare Tunnel..."
curl -L --output cloudflared.deb https://github.com/cloudflare/cloudflared/releases/latest/download/cloudflared-linux-amd64.deb
dpkg -i cloudflared.deb
rm cloudflared.deb

# Install PufferPanel
echo "Installing PufferPanel..."
curl -s https://packagecloud.io/install/repositories/pufferpanel/pufferpanel/script.deb.sh | bash
apt-get install -y pufferpanel

# Create a system administrator for PufferPanel
echo "Creating PufferPanel Admin Account..."
pufferpanel user add --admin --email admin@ziploot.com --name admin --password adminpassword

# Start PufferPanel
systemctl enable pufferpanel
systemctl start pufferpanel

echo "========================================================"
echo "✅ Installation completed successfully!"
echo "To expose PufferPanel to the internet via Cloudflare Tunnel:"
echo "1. Run: cloudflared tunnel login"
echo "2. Run: cloudflared tunnel create vps-tunnel"
echo "3. Run: cloudflared tunnel route dns vps-tunnel panel.yourdomain.com"
echo "4. Run: cloudflared tunnel run --url http://localhost:8080 vps-tunnel"
echo "========================================================"
