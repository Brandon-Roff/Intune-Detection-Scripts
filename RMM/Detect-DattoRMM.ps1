# Check if the Datto RMM Agent files exist
$agentPath = "C:\Program Files (x86)\CentraStage\Gui.exe"
if (Test-Path $agentPath) {
    Write-Output "Datto RMM Agent files are present."
    exit 0
} else {
    Write-Output "Datto RMM Agent files are not present."
    exit 1
}