# 1. Define the modules you need
$RequiredModules = @("Terminal-Icons", "ZLocation", "PSReadLine")

# 2. Logic to check and install missing modules
foreach ($module in $RequiredModules) {
    if (-not (Get-Module -ListAvailable -Name $module)) {
        Write-Host "Module '$module' is missing. Attempting to install..." -ForegroundColor Yellow
        
        # Check if we have Admin rights
        $currentPrincipal = New-Object Security.Principal.WindowsPrincipal([Security.Principal.WindowsIdentity]::GetCurrent())
        if ($currentPrincipal.IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)) {
            Install-Module -Name $module -Force -Confirm:$false -AllowPrerelease -SkipPublisherCheck
        } else {
            Write-Host "Elevating to Administrator to install $module..." -ForegroundColor Cyan
            Start-Process powershell -Verb RunAs -ArgumentList "-Command Install-Module -Name $module -Force -Confirm:`$false -AllowPrerelease -SkipPublisherCheck" -Wait
        }
    }
}

# 3. Your regular configurations
oh-my-posh init pwsh --config $Home/dev/dotfiles/windows/catpuccin.omp.json | Invoke-Expression

# Ensure the updated PSReadLine is actually loaded
Import-Module PSReadLine -MinimumVersion 2.2.0 

Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -PredictionViewStyle ListView
Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete

Import-Module Terminal-Icons
Import-Module ZLocation


#project shortcuts
# 1. Define the React function and its alias
function GoToLMS { Set-Location "C:\Office\CoreLMS\Neemaacademy\NeemAcademyWebApp\NeemAcademyWebApp\ReactApp" }
New-Alias proj-core GoToLMS 

function GoToSeed { Set-Location "C:\Users\Braindigit\Office\DotNetCoreProjectSeed\src\WebApp" }
New-Alias proj-seed GoToSeed 

function freeClaude { $env:ANTHROPIC_AUTH_TOKEN="freecc"; $env:ANTHROPIC_BASE_URL="http://localhost:8082"; claude }
New-Alias free-claude freeClaude


