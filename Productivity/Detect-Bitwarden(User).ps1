# This will Detect Bitwarden Application in the users profile directory.
# Website: https://bitwarden.com/

# Path to the Bitwarden executable
$BitwardenPath = "$env:USERPROFILE\AppData\Local\Programs\Bitwarden\Bitwarden.exe"

# Check if Bitwarden is installed

if (Test-Path -Path $BitwardenPath) {
    Write-Output "Bitwarden files are present."
    exit 0
} else {
    Write-Output "Bitwarden files are not present."
    exit 1
}