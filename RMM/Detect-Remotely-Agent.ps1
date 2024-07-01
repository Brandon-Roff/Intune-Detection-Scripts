#Check to See if the RMM Agent is installed on the system
#Remotely Project Link: https://github.com/immense/Remotely

# Path to the RMM Agent

$RMMAgentPath = "C:\Program Files\Remotely\RemotelyAgent.exe"

#Check if RMM Agent is installed

if (Test-Path "$RMMAgentPath") {
    Write-Output "Remotely Agent files are present."
    exit 0
} else {
    Write-Output "Remotely Agent files are not present."
    exit 1
}