#Checks to see if MeshCentral Agent is installed

#Specify the path to the MeshCentral Agent
$MeshAgentPath = "C:\Program Files\Mesh Agent\MeshAgent.exe"

#Check if the MeshCentral Agent is installed
if (Test-Path $MeshAgentPath) {
    Write-Output "MeshCentral Agent files are present."
    exit 0
} else {
    Write-Output "MeshCentral Agent files are not present."
    exit 1
}