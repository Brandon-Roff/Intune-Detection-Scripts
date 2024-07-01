# This Script Will detect WireShark at the system level
# WireShark Website: https://www.wireshark.org/

# Path to the WireShark
$WireSharkPath = "C:\Program Files\WireShark\WireShark.exe"

#Check if WireShark is installed

if (Test-Path "$WireSharkPath") {
    Write-Output "WireShark files are present."
    exit 0
} else {
    Write-Output "WireShark files are not present."
    exit 1
}
```
