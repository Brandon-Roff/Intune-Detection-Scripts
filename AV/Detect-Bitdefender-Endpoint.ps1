# This Script Will Detect Bitdefender Endpoint Security Tools on Windows
# Bitdefender Endpoint Security Tools Website: https://www.bitdefender.com/business/endpoint-security.html

# Path to the Bitdefender Endpoint Security Tools executable
$BitdefenderInstallPath = "C:\Program Files\Bitdefender\Endpoint Security\EPSecurityService.exe"

#Check if Bitdefender Endpoint Security Tools is installed

if (Test-Path -Path $BitdefenderInstallPath) {
    Write-Output "Bitdefender Endpoint Security Tools is installed."
    exit 0
} else {
    Write-Output "Bitdefender Endpoint Security Tools is not installed."
    exit 1
}