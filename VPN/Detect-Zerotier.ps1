# This Script Will detect ZeroTier at the system level
# ZeroTier Website: https://www.zerotier.com/

# Path to the ZeroTier
$ZeroTierPath = "C:\Program Files (x86)\ZeroTier\One\zerotier_desktop_ui.exe"

#Check if ZeroTier is installed

if (Test-Path "$ZeroTierPath") {
    Write-Output "ZeroTier files are present."
    exit 0
} else {
    Write-Output "ZeroTier files are not present."
    exit 1
}
```
