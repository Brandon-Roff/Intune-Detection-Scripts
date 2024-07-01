# This Script Will detect Private Internet Access at the system level
# Private Internet Access Website: https://www.privateinternetaccess.com/

# Path to the Private Internet Access
$PrivateInternetAccessPath = "C:\Program Files\Private Internet Access\pia-client.exe"

#Check if Private Internet Access is installed

if (Test-Path "$PrivateInternetAccessPath") {
    Write-Output "Private Internet Access files are present."
    exit 0
} else {
    Write-Output "Private Internet Access files are not present."
    exit 1
}

