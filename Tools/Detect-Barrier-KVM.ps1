# This Script will check if  Barrier KVM is installed on the machine
# Barrier website: https://github.com/debauchee/barrier/releases/tag/v2.4.0

$BarrierPath = "C:\Program Files\Barrier\barrier.exe"

#Check if Barrier KVM is installed

if (Test-Path "$BarrierPath") {
    Write-Output "Barrier KVM files are present."
    exit 0
} else {
    Write-Output "Barrier KVM files are not present."
    exit 1
}
