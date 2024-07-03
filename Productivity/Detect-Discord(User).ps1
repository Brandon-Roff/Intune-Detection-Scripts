#This Script Will Detect if Discord is installed at the User Level
# Discord Website: https://discord.com/

# Discord Install Path
$DiscordPath = "$env:USERPROFILE\AppData\Local\Discord\Update.exe"

# Check if Discord is installed

if (Test-Path $DiscordPath) {
    Write-Host "Discord is installed"
    exit 0
} else {
    Write-Host "Discord is not installed"
    exit 1
}