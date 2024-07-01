# This Sciprt will detect OpenVPN Connect at the system level
# OpenVPN Connect Website: https://openvpn.net/vpn-client/

# Path to the OpenVPN Connect
$OpenVPNConnectPath = "C:\Program Files\OpenVPN Connect\OpenVPNConnect.exe"

#Check if OpenVPN Connect is installed

if (Test-Path "$OpenVPNConnectPath") {
    Write-Output "OpenVPN Connect files are present."
    exit 0
} else {
    Write-Output "OpenVPN Connect files are not present."
    exit 1
}
