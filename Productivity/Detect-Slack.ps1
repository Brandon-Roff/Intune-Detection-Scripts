# This Script Detects Slack 
# Slack Website: https://slack.com/

# Path to the Slack executable
$SlackPath = "$env:USERPROFILE\AppData\Local\slack\slack.exe"

# Check if Slack is installed
if (Test-Path -Path $SlackPath) {
    Write-Output "Slack files are present."
    exit 0
} else {
    Write-Output "Slack files are not present."
    exit 1
}
