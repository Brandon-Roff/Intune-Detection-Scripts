# This Script Will Detect if LibreOffice is installed on the machine.
# LibreOffice Website: https://www.libreoffice.org/

# LibreOffice Install Path

$LibreOfficePath = "$env:ProgramFiles\LibreOffice\program\soffice.exe"

# Check if LibreOffice is installed

if (Test-Path $LibreOfficePath) {
    Write-Host "LibreOffice is installed"
    exit 0
} else {
    Write-Host "LibreOffice is not installed"
    exit 1
}