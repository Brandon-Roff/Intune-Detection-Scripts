# This Script Will detect PuTTY at the system level
# PuTTY Website: https://www.putty.org

Import-Module "$PSScriptRoot/../../modules/DetectionCommon.psm1" -Force
$paths = @(
    "$Env:ProgramFiles\PuTTY\putty.exe",
    "$Env:ProgramFiles(x86)\PuTTY\putty.exe"
)
# Search for loose putty.exe dropped elsewhere under Program Files as a portable binary
$loose = Get-ChildItem -Path $Env:ProgramFiles,$Env:ProgramFiles(x86) -Filter putty.exe -Recurse -ErrorAction SilentlyContinue | Select-Object -First 1
$detected = (Test-FilePaths $paths) -or [bool](Get-AppByName '*PuTTY*') -or [bool]$loose -or (Test-ExecutableInPath @('putty'))
Resolve-Detection -Detected:$detected -Label 'PuTTY'

