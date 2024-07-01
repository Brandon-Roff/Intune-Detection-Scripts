# This Script will check for Angry IP Scanner

$AngryIPPath = "C:\Program Files\Angry IP Scanner\ipscan.exe"

#Check if Angry IP Scanner is installed

if (Test-Path "$AngryIPPath") {
    Write-Output "Angry IP Scanner files are present."
    exit 0
} else {
    Write-Output "Angry IP Scanner files are not present."
    exit 1
}