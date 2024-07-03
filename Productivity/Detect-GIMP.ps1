# This Script Will Detect if GIMP is installed on the machine.
# GIMP Website: https://www.gimp.org/

# GIMP Install Path
$GimpPath = "$env:ProgramFiles\GIMP 2\bin\gimp-2.10.exe"

# Check if GIMP is installed

if (Test-Path $GimpPath) {
    Write-Host "GIMP is installed"
    exit 0
} else {
    Write-Host "GIMP is not installed"
    exit 1
}