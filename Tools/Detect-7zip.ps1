# This Script Will Detect 7zip

$7zipPath = "C:\Program Files\7-Zip\7z.exe"

#Check if 7zip is installed

if (Test-Path "$7zipPath") {
    Write-Output "7zip files are present."
    exit 0
} else {
    Write-Output "7zip files are not present."
    exit 1
}