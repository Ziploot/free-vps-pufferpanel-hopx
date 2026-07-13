#!/bin/bash
# [ZipLoot] Hopx.ai VPS Configurator Setup
# ==============================================

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
BLUE='\033[0;34m'
CYAN='\033[0;36m'
NC='\033[0;37m' # No Color

clear
echo -e "${CYAN}==============================================${NC}"
echo -e "${CYAN}   ⚡ ZIPLOOT HOPX.AI VPS SETUP & AUTOMATOR${NC}"
echo -e "${CYAN}==============================================${NC}"
echo -e "${GREEN}   PufferPanel & Docker | Cloudflare Tunnels | \$0${NC}"
echo -e "${CYAN}==============================================${NC}"
echo

PROJECT_DIR="$(pwd)/free-vps-hopx-project"
mkdir -p "$PROJECT_DIR"
cd "$PROJECT_DIR"

echo -e "${BLUE}[INFO] Downloading setup script...${NC}"
BaseUrl="https://raw.githubusercontent.com/Ziploot/free-vps-pufferpanel-hopx/main"
curl -sL "$BaseUrl/setup.sh" -o setup.sh
chmod +x setup.sh

echo -e "${GREEN}[SUCCESS] Local files configured in: $PROJECT_DIR${NC}"
echo

echo -e "${CYAN}==============================================${NC}"
echo -e "${GREEN}⚡ OPTION 1: Open Hopx.ai Console${NC}"
echo -e "${CYAN}==============================================${NC}"
echo "Claim your free \$200 credits and spin up an Ubuntu/Debian Sandbox."
echo

read -p "Do you want to open Hopx.ai dashboard now? (Y/N): " choice1
if [[ "$choice1" =~ ^[Yy]$ ]]; then
    echo -e "${GREEN}[INFO] Opening Hopx.ai...${NC}"
    URL="https://hopx.ai"
    if command -v xdg-open &> /dev/null; then
        xdg-open "$URL"
    elif command -v open &> /dev/null; then
        open "$URL"
    else
        echo -e "${YELLOW}Please visit: $URL${NC}"
    fi
fi

echo
echo -e "${CYAN}==============================================${NC}"
echo -e "${GREEN}⚡ OPTION 2: Auto-Copy & Execute Setup Command${NC}"
echo -e "${CYAN}==============================================${NC}"
echo "Run this command inside your Hopx VPS sandbox terminal:"
echo -e "${YELLOW}curl -sL https://raw.githubusercontent.com/Ziploot/free-vps-pufferpanel-hopx/main/setup.sh | bash${NC}"
echo

read -p "Press Enter to finish setup..."
