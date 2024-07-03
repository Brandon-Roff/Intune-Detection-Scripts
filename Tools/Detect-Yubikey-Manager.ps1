#This Script will check to see if the Yubikey Manager is installed on the machine.
# Yubikey Manager Project Website: https://www.yubico.com/products/services-software/download/yubikey-manager/

#Yubikey Manager Install Path
$YubikeyManagerPath = "$env:ProgramFiles\Yubico\YubiKey Manager\ykman-gui.exe"

# Check if Yubikey Manager is installed

if (Test-Path $YubikeyManagerPath) {
    Write-Host "Yubikey Manager is installed"
    exit 0
} else {
    Write-Host "Yubikey Manager is not installed"
    exit 1
}
