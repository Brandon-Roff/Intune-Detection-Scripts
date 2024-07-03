# This Script will detect if Audacity is installed on the machine.
# Audacity Project Website: https://www.audacityteam.org/

#Audacity Install Path

$AudacityPath = "$env:ProgramFiles\Audacity\audacity.exe"

# Check if Audacity is installed

if (Test-Path $AudacityPath) {
    Write-Host "Audacity is installed"
    exit 0
} else {
    Write-Host "Audacity is not installed"
    exit 1
}