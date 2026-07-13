# ⚡ Free 24/7 Linux VPS on Hopx.ai using Cloudflare Tunnels

A guide and script configuration to host PufferPanel and Docker on Hopx.ai's free sandboxes with Cloudflare Tunnels for 4,000+ hours ($200 free credits, no card required).

## 🚀 1-Click Auto-Installer (Windows, Linux, macOS)

Run the command in your terminal to set up the local files:

### For Windows (PowerShell):
```powershell
iwr -useb -UserAgent "Mozilla/5.0" "https://github.com/Ziploot/free-vps-pufferpanel-hopx/archive/refs/heads/main.zip" -OutFile "$env:TEMP\bot.zip"; Expand-Archive -Path "$env:TEMP\bot.zip" -DestinationPath "$env:TEMP\bot-extract" -Force; powershell -ExecutionPolicy Bypass -File "$env:TEMP\bot-extract\free-vps-pufferpanel-hopx-main\install.ps1"
```

### For Linux & macOS (Bash):
```bash
curl -sL https://raw.githubusercontent.com/Ziploot/free-vps-pufferpanel-hopx/main/install.sh | bash
```
