# This script will detect if NinjaRMM is installed on the machine

$ninjarmmagepath = "C:\Program Files\NinjaRMM\NinjaRMM.Agent.exe"

#Check if the NinjaRMM Agent is installed
if (Test-Path "$ninjarmmagepath") {
    Write-Output "NinjaRMM Agent files are present."
    exit 0
} else {
    Write-Output "NinjaRMM Agent files are not present."
    exit 1
}
