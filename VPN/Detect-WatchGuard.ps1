#This Script will detect Watchguard SSL VPN Client on Windows
#Watchguard SSL VPN Client Website: https://www.watchguard.com/wgrd-products/security-services/secure-mobile-access/ssl-vpn

# Path to the Watchguard SSL VPN Client executable
$WatchguardInstallPath = "C:\Program Files (x86)\WatchGuard\WatchGuard Mobile VPN with SSL\wgsslvpnc.exe"

#Check if Watchguard SSL VPN Client is installed

if (Test-Path -Path $WatchguardInstallPath) {
    Write-Output "Watchguard SSL VPN Client is installed."
    exit 0
} else {
    Write-Output "Watchguard SSL VPN Client is not installed."
    exit 1
}