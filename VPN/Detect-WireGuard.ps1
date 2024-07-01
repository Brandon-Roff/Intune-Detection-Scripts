# This Script Will detect WireGuard at the system level
# WireGuard Website: https://www.wireguard.com/

# Path to the WireGuard
$WireGuardPath = "C:\Program Files\WireGuard\WireGuard.exe"

#Check if WireGuard is installed

if (Test-Path "$WireGuardPath") {
    Write-Output "WireGuard files are present."
    exit 0
} else {
    Write-Output "WireGuard files are not present."
    exit 1
}