# This Script will check for Angry IP Scanner

Import-Module "$PSScriptRoot/../../modules/DetectionCommon.psm1" -Force
$paths = @(
    "$Env:ProgramFiles\Angry IP Scanner\ipscan.exe",
    "$Env:ProgramFiles(x86)\Angry IP Scanner\ipscan.exe"
)
$detected = (Test-FilePaths $paths) -or [bool](Get-AppByName '*Angry IP Scanner*')
Resolve-Detection -Detected:$detected -Label 'Angry IP Scanner'