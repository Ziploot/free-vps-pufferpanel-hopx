# [ZipLoot] Hopx.ai VPS Configurator Setup
# ==============================================

Clear-Host
Write-Host "==============================================" -ForegroundColor Cyan
Write-Host "   ⚡ ZIPLOOT HOPX.AI VPS SETUP & AUTOMATOR" -ForegroundColor Cyan
Write-Host "==============================================" -ForegroundColor Cyan
Write-Host "   PufferPanel & Docker | Cloudflare Tunnels | \$0" -ForegroundColor Green
Write-Host "==============================================" -ForegroundColor Cyan
Write-Host

$ProjectFolder = "free-vps-hopx-project"

if (Test-Path $ProjectFolder) {
    Write-Host "[WARN] Folder '$ProjectFolder' already exists." -ForegroundColor Yellow
} else {
    Write-Host "[INFO] Creating folder..." -ForegroundColor Blue
    New-Item -ItemType Directory -Path $ProjectFolder -Force | Out-Null
}

# Download setup.sh locally for offline backup
Write-Host "[INFO] Downloading setup script..." -ForegroundColor Blue
$BaseUrl = "https://raw.githubusercontent.com/Ziploot/free-vps-pufferpanel-hopx/main"
Invoke-WebRequest -Uri "$BaseUrl/setup.sh" -OutFile "$ProjectFolder/setup.sh" -UserAgent "Mozilla/5.0"

Write-Host "[SUCCESS] Local files generated in: $ProjectFolder" -ForegroundColor Green
Write-Host

Write-Host "==============================================" -ForegroundColor Cyan
Write-Host "⚡ OPTION 1: Open Hopx.ai Console" -ForegroundColor Green
Write-Host "==============================================" -ForegroundColor Cyan
Write-Host "Claim your free \`$200 credits and spin up an Ubuntu/Debian Sandbox."
Write-Host

$choice1 = Read-Host "[INPUT] Do you want to open Hopx.ai dashboard now? (Y/N)"
if ($choice1 -eq 'y' -or $choice1 -eq 'Y') {
    Write-Host "[INFO] Opening Hopx.ai..." -ForegroundColor Green
    Start-Process "https://hopx.ai"
}

Write-Host
Write-Host "==============================================" -ForegroundColor Cyan
Write-Host "⚡ OPTION 2: Auto-Copy & Execute Setup Command" -ForegroundColor Green
Write-Host "==============================================" -ForegroundColor Cyan
Write-Host "This script will copy the VPS install command to your clipboard."
Write-Host "Simply paste it into your Hopx VPS console terminal and press Enter!"
Write-Host

$choice2 = Read-Host "[INPUT] Do you want to copy the command to clipboard now? (Y/N)"
if ($choice2 -eq 'y' -or $choice2 -eq 'Y') {
    $Command = "curl -sL https://raw.githubusercontent.com/Ziploot/free-vps-pufferpanel-hopx/main/setup.sh | bash"
    Set-Clipboard -Value $Command
    Write-Host "[SUCCESS] Command copied to clipboard!" -ForegroundColor Green
    Write-Host "Command: $Command" -ForegroundColor Yellow
}

Write-Host
Write-Host "==============================================" -ForegroundColor Cyan
Write-Host "🎉 SETUP COMPLETE!" -ForegroundColor Green
Write-Host "==============================================" -ForegroundColor Cyan
