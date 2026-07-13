# ZipLoot Windows 1-Click Hopx VPS Configurator
try {
    Write-Host "==============================================" -ForegroundColor Green
    Write-Host "[ZipLoot] Hopx VPS Installer" -ForegroundColor Green
    Write-Host "==============================================" -ForegroundColor Green

    $scriptDir = Split-Path -Parent $MyInvocation.MyCommand.Definition
    $projectFolder = Join-Path $pwd "free-vps-hopx-project"
    if (Test-Path $projectFolder) {
        Write-Host "[WARN] Folder 'free-vps-hopx-project' already exists." -ForegroundColor Yellow
    } else {
        New-Item -ItemType Directory -Path $projectFolder -ErrorAction SilentlyContinue | Out-Null
    }

    Copy-Item -Path "$scriptDir\\setup.sh" -Destination "$projectFolder\\setup.sh" -Force

    Write-Host "[SUCCESS] Local files generated!" -ForegroundColor Green
    Write-Host "To configure your Hopx.ai VPS:" -ForegroundColor Yellow
    Write-Host "1. Sign up on Hopx.ai and claim your $200 free credits (no card needed)." -ForegroundColor Yellow
    Write-Host "2. Create a Linux Sandbox environment." -ForegroundColor Yellow
    Write-Host "3. Upload the setup.sh file and execute it inside the sandbox terminal." -ForegroundColor Green
    Write-Host "--------------------------------------------------------" -ForegroundColor Green
    
    Read-Host "`nSetup completed. Press Enter to exit..."
} catch {
    Write-Host "[ERROR] An unexpected error occurred: $_" -ForegroundColor Red
    Read-Host "Press Enter to exit..."
}
