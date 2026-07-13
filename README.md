# ⚡ Hopx.ai Fully Automatic VPS Configurator

Automate installing PufferPanel & Docker on a free Hopx.ai Linux Sandbox VM using Cloudflare Tunnels.

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
