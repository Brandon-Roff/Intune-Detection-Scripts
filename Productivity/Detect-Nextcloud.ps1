#This Script Will Detect Nextcloud Client Installation

$NextcloudPath = "C:\Program Files\Nextcloud\Nextcloud.exe"

#Check if Nextcloud is installed

if (Test-Path "$NextcloudPath") {
    Write-Output "Nextcloud files are present."
    exit 0
} else {
    Write-Output "Nextcloud files are not present."
    exit 1
}