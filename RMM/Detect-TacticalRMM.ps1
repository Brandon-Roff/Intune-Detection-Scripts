# This script Detects if TacticalRMM is installed on the machine

$agentPath = "C:\Program Files\TacticalAgent\TacticalAgent.exe"
$MeshAgentPath = "C:\Program Files\TacticalAgent\MeshAgent.exe"

#Check Both Files Exist or Code 1
if (Test-Path $agentPath -and Test-Path $MeshAgentPath) {
    Write-Output "TacticalRMM Agent files are present."
    exit 0
} else {
    Write-Output "TacticalRMM Agent files are not present."
    exit 1
}