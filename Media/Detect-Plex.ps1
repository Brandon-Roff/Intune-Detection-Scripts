# This Script Will detect Plex Media player at the system level
# Plex Media Player Website: https://www.plex.tv/media-server-downloads/

# Path to the Plex Media Player
$PlexPath = "C:\Program Files\Plex\PleX\Plex.exe"

#Check if Plex Media Player is installed

if (Test-Path "$PlexPath") {
    Write-Output "Plex Media Player files are present."
    exit 0
} else {
    Write-Output "Plex Media Player files are not present."
    exit 1
}