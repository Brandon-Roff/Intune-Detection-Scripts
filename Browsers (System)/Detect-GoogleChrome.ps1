# Check if Google Chrome is installed at the system Level

# Path for Google Chrome Browser system 

$ChromePath = "C:\Program Files\Google\Chrome\Application\chrome.exe"

#Check if Google Chrome is installed

if (Test-Path "$ChromePath") {
    Write-Output "Google Chrome files are present."
    exit 0
} else {
    Write-Output "Google Chrome files are not present."
    exit 1
}