# This Script Will detect OnlyOffice at the system level
# OnlyOffice Website: https://www.onlyoffice.com/

# Path to the OnlyOffice
$OnlyOfficePath = "C:\Program Files\ONLYOFFICE\DesktopEditors\desktopeditors.exe"

#Check if OnlyOffice is installed

if (Test-Path "$OnlyOfficePath") {
    Write-Output "OnlyOffice files are present."
    exit 0
} else {
    Write-Output "OnlyOffice files are not present."
    exit 1
}