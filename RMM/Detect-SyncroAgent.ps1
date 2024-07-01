#This Script Will Detect Synro Agent

$SyncroAgentPath = "C:\Program Files\Syncro\Syncro Agent\Syncro Agent.exe"

#Check if the Syncro Agent is installed

if (Test-Path "$SyncroAgentPath") {
    Write-Output "Syncro Agent files are present."
    exit 0
} else {
    Write-Output "Syncro Agent files are not present."
    exit 1
}