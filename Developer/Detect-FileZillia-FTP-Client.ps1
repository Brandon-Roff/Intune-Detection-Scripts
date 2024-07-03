# This Script will detect if FileZilla FTP Client is installed on the machine.
# FileZilla FTP Client Website: https://filezilla-project.org/

# FileZilla FTP Client Install Path
$FileZillaPath = "$env:ProgramFiles\FileZilla FTP Client\filezilla.exe"

# Check if FileZilla FTP Client is installed

if (Test-Path $FileZillaPath) {
    Write-Host "FileZilla FTP Client is installed"
    exit 0
} else {
    Write-Host "FileZilla FTP Client is not installed"
    exit 1
}