# Check to see if Visual Studio Code is installed on the system

# Path to Visual Studio Code
$VSCodePath = "C:\Program Files\Microsoft VS Code\Code.exe"

#Check if Visual Studio Code is installed

if (Test-Path "$VSCodePath") {
    Write-Output "Visual Studio Code files are present."
    exit 0
} else {
    Write-Output "Visual Studio Code files are not present."
    exit 1
}