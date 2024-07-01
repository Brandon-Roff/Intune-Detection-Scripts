# This Script Will detect Splashtop Streamer 
# Splashtop Website: https://www.splashtop.com/

# Path to the Splashtop
$SplashtopPath = "C:\Program Files (x86)\Splashtop\Splashtop Remote\Server\SRApp.exe"

#Check if Splashtop is installed

if (Test-Path "$SplashtopPath") {
    Write-Output "Splashtop files are present."
    exit 0
} else {
    Write-Output "Splashtop files are not present."
    exit 1
}