# This Script Detects VLC Player
# VLC Player Website: https://www.videolan.org/vlc/index.html

# Path to the VLC Player executable
$VLCPlayerPath = "C:\Program Files\VideoLAN\VLC\vlc.exe"

# Check if VLC Player is installed
if (Test-Path -Path $VLCPlayerPath) {
    Write-Output "VLC Player files are present."
    exit 0
} else {
    Write-Output "VLC Player files are not present."
    exit 1
}