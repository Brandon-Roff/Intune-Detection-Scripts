# This Script Will Detect PowerToys on Windows

# Powertoys Path
$PowerToysInstallPath = "$env:USERPROFILE\AppData\Local\Powertoys\PowerToys.exe"

#Check if PowerToys is installed

if (Test-Path -Path $PowerToysInstallPath) {
    Write-Output "PowerToys is installed."
    exit 0
} else {
    Write-Output "PowerToys is not installed."
    exit 1
}