# Check if inscape is installed on the system

# InkScape Path
$InkScapePath = "C:\Program Files\Inkscape\bin\inkscape.exe"

#Check if Inkscape is installed
if (Test-Path "$InkScapePath") {
    Write-Output "Inkscape files are present."
    exit 0
} else {
    Write-Output "Inkscape files are not present."
    exit 1
}