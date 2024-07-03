#This Script will detect if Dropbox is installed on the machine.
# Dropbox Project Website: https://www.dropbox.com/

#Dropbox Install Path
$DropboxPath = "$env:ProgramFiles (x86)\Dropbox\Client\Dropbox.exe"

# Check if Dropbox is installed

if (Test-Path $DropboxPath) {
    Write-Host "Dropbox is installed"
    exit 0
} else {
    Write-Host "Dropbox is not installed"
    exit 1
}