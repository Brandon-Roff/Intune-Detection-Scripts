# This Script Detects Python 3.12
# Python Website: https://www.python.org/

# Path to the Python executable
$PythonPath = "C:\Program Files\Python312\python.exe"

# Check if Python is installed
if (Test-Path -Path $PythonPath) {
    Write-Output "Python 3.12 files are present."
    exit 0
} else {
    Write-Output "Python 3.12 files are not present."
    exit 1
}