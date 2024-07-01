# This Script Detects Chocolatey Package Manager
# Chocolatey Website: https://chocolatey.org/

# Path to the Chocolatey executable
$ChocolateyCommand = "choco"  

#Check if choco command is available
if (Get-Command -Name $ChocolateyCommand -ErrorAction SilentlyContinue) {
    Write-Output "Chocolatey is installed."
    exit 0
} else {
    Write-Output "Chocolatey is not installed."
    exit 1
}
