# VNC Viewer - Intune Detection Script

$exePath = "C:\Program Files\RealVNC\VNC Viewer\VNCViewer.exe"

if (Test-Path $exePath) {
    Write-Output "VNC Viewer is installed."
    exit 0  
}
else {
    Write-Output "VNC Viewer is NOT installed."
    exit 1 
}
