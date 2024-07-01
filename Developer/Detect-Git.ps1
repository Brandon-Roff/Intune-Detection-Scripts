#Check to see if Git is installed

# Path to Git
$GitPath = "C:\Program Files\Git\cmd\git.exe"

#Check if Git is installed
if (Test-Path "$GitPath") {
    Write-Output "Git files are present."
    exit 0
} else {
    Write-Output "Git files are not present."
    exit 1
}