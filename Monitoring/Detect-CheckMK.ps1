# Check_MK Agent - Intune Detection Script

$exePath = "C:\Program Files (x86)\checkmk\service\check_mk_agent.exe"

if (Test-Path $exePath) {
    Write-Output "Check_MK Agent is installed."
    exit 0 
}
else {
    Write-Output "Check_MK Agent is NOT installed."
    exit 1  
}
