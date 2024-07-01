#Check If CCleaner is installed

#CCleaner Path
$CCleanerPath = "C:\Program Files\CCleaner\CCleaner64.exe"
$CCleanerPath86 = "C:\Program Files (x86)\CCleaner\CCleaner.exe"

#Check if CCleaner is installed either 64 or 32 bit

if (Test-Path "$CCleanerPath") {
    Write-Output "CCleaner files are present."
    exit 0
} elseif (Test-Path "$CCleanerPath86") {
    Write-Output "CCleaner files are present."
    exit 0
} else {
    Write-Output "CCleaner files are not present."
    exit 1
}
