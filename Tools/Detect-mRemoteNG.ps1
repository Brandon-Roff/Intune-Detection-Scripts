# mRemoteNG - Intune Detection Script

$exePath = "C:\Program Files (x86)\mRemoteNG\mRemoteNG.exe"

if (Test-Path $exePath) {
    Write-Output "mRemoteNG is installed."
    exit 0
}
else {
    Write-Output "mRemoteNG is NOT installed."
    exit 1
}