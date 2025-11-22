# This Script Will detect WireShark at the system level
# WireShark Website: https://www.wireshark.org/

Import-Module "$PSScriptRoot/../../modules/DetectionCommon.psm1" -Force
$paths = @(
    "$Env:ProgramFiles\Wireshark\Wireshark.exe",
    "$Env:ProgramFiles(x86)\Wireshark\Wireshark.exe"
)
$detected = (Test-FilePaths $paths) -or [bool](Get-AppByName '*Wireshark*') -or (Test-ExecutableInPath @('wireshark'))
Resolve-Detection -Detected:$detected -Label 'Wireshark'
