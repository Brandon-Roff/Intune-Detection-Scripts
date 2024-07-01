# Check if TreeSize Free is installed

# Path to TreeSize Free

$TreeSizePath = "C:\Program Files\JAM Software\TreeSize Free\TreeSizeFree.exe"

#Check if TreeSize Free is installed

if (Test-Path "$TreeSizePath") {
    Write-Output "TreeSize Free files are present."
    exit 0
} else {
    Write-Output "TreeSize Free files are not present."
    exit 1
}