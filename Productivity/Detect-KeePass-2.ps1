#this Script will detect if KeePass 2 is installed on the machine.
# KeePass 2 Website: https://keepass.info/  

# KeePass 2 Install Path
$KeePassPath = "$env:ProgramFiles\KeePass Password Safe 2\KeePass.exe"

# Check if KeePass 2 is installed

if (Test-Path $KeePassPath) {
    Write-Host "KeePass 2 is installed"
    exit 0
} else {
    Write-Host "KeePass 2 is not installed"
    exit 1
}