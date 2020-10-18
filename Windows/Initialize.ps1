function InstallPackages {
    ./ChocoPackages.ps1
}

function InstallChocolatey {
    ./InstallChocolatey.ps1
}

function GivePermissionToInstallPackages{
    Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass
}

function RemovePermissionToInstallPackages {
    Set-ExecutionPolicy Restricted
}


## Check if Chocolatey is installed

Write-Host "... Checking if Chocolatey is Install" -ForegroundColor Yellow

If(Test-Path -Path "$env:ProgramData\Chocolatey") {
    Write-Host "Chocolatey is Install in computer (~‾▿‾)~" -ForegroundColor Green
    InstallPackages;
} Else {
    InstallChocolatey;
    InstallPackages;
}

## Remove permission in powershell to run scripts. Powershell must be run in administration mode
RemovePermissionToInstallPackages;

