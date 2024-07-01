# This Script Detects Postman Application is installed
# Postman Website: https://www.postman.com/

# Path to the Postman executable
$PostmanPath = "$env:USERPROFILE\AppData\Local\Postman\Postman.exe"

# Check if Postman is installed

if (Test-Path -Path $PostmanPath) {
    Write-Output "Postman files are present."
    exit 0
} else {
    Write-Output "Postman files are not present."
    exit 1
}