# This Script Will detect CyberDuck at the system level
# CyberDuck Website: https://cyberduck.io/

# Path to the CyberDuck

$CyberDuckPath = "C:\Program Files\CyberDuck\CyberDuck.exe"

#Check if CyberDuck is installed

if (Test-Path "$CyberDuckPath") {
    Write-Output "CyberDuck files are present."
    exit 0
} else {
    Write-Output "CyberDuck files are not present."
    exit 1
}