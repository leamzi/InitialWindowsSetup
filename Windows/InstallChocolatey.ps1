function GetChocolateyVersion { choco -v }

Write-Host "Chocolatey not Install ¯\_(ツ)_/¯" -ForegroundColor Red
Write-Host "Installing Chocolatey... (ง •̀_•́)ง" -ForegroundColor Yellow

Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

Write-Host "Chocolatey $(GetChocolateyVersion) Installed (~‾▿‾)~" -ForegroundColor Yellow