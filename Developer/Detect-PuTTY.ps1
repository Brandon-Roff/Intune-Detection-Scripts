# This Script Will detect PuTTY at the system level
# PuTTY Website: https://www.putty.org

# Path to the PuTTY
$PuTTYPath = "C:\Program Files\PuTTY\putty.exe"

#Check if PuTTY is installed
if (Test-Path "$PuTTYPath") {
    Write-Output "PuTTY files are present."
    exit 0
} else {
    Write-Output "PuTTY files are not present."
    exit 1
}

