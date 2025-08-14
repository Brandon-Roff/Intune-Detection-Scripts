# Dell Peripheral Manager - Intune Detection Script

$exePath = "C:\Program Files\Dell\Dell Peripheral Manager\DPM.exe"

if (Test-Path $exePath) {
    Write-Output "Dell Peripheral Manager is installed."
    exit 0  
}
else {
    Write-Output "Dell Peripheral Manager is NOT installed."
    exit 1  
}