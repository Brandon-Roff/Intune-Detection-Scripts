# Deskflow - Intune Detection Script

$exePath = "C:\Program Files\Deskflow\deskflow.exe"

if (Test-Path $exePath) {
    Write-Output "Deskflow is installed."
    exit 0
}
else {
    Write-Output "Deskflow is NOT installed."
    exit 1
}
