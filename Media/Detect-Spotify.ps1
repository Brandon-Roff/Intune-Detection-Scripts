# This Script Detects Spotify Application is installed
# Spotify Website: https://www.spotify.com/

# Path to the Spotify executable

$SpotifyPath = "$env:USERPROFILE\AppData\Roaming\Spotify\Spotify.exe"

# Check if Spotify is installed

if (Test-Path -Path $SpotifyPath) {
    Write-Output "Spotify files are present."
    exit 0
} else {
    Write-Output "Spotify files are not present."
    exit 1
}