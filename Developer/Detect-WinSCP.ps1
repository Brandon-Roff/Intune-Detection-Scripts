#This Script Will detect WinSCP at the system level
#WinSCP Website: https://winscp.net/eng/index.php

Import-Module "$PSScriptRoot/../../modules/DetectionCommon.psm1" -Force
$paths = @(
    "$Env:ProgramFiles\WinSCP\WinSCP.exe",
    "$Env:ProgramFiles(x86)\WinSCP\WinSCP.exe"
)
$detected = (Test-FilePaths $paths) -or [bool](Get-AppByName '*WinSCP*') -or (Test-ExecutableInPath @('WinSCP'))
Resolve-Detection -Detected:$detected -Label 'WinSCP'