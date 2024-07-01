# This Script Will detect Brave Browser at the system level

# Path to the Brave Browser
$BravePath = "C:\Program Files\BraveSoftware\Brave-Browser\Application\brave.exe"

#Check if Brave Browser is installed

if (Test-Path "$BravePath") {
    Write-Output "Brave Browser files are present."
    exit 0
} else {
    Write-Output "Brave Browser files are not present."
    exit 1
}