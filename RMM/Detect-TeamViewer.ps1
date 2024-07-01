# This Script Will detect TeamViewer at the system level
# TeamViewer Website: https://www.teamviewer.com/

# Path to the TeamViewer

$TeamViewerPath = "C:\Program Files\TeamViewer\TeamViewer.exe"

#Check if TeamViewer is installed

if (Test-Path "$TeamViewerPath") {
    Write-Output "TeamViewer files are present."
    exit 0
} else {
    Write-Output "TeamViewer files are not present."
    exit 1
}