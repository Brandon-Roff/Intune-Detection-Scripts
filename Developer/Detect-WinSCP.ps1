#This Script Will detect WinSCP at the system level
#WinSCP Website: https://winscp.net/eng/index.php

# Path to the WinSCP
$WinSCPPath = "C:\Program Files (x86)\WinSCP\WinSCP.exe"

#Check if WinSCP is installed

if (Test-Path "$WinSCPPath") {
    Write-Output "WinSCP files are present."
    exit 0
} else {
    Write-Output "WinSCP files are not present."
    exit 1
}