function Get-AppByName {
    param(
        [Parameter(Mandatory)][string]$NamePattern
    )
    $roots = @(
        'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall',
        'HKLM:\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Uninstall'
    )
    foreach ($r in $roots) {
        if (Test-Path $r) {
            Get-ChildItem $r -ErrorAction SilentlyContinue |
                Get-ItemProperty -ErrorAction SilentlyContinue |
                Where-Object { $_.DisplayName -like $NamePattern }
        }
    }
}

function Test-FilePaths {
    param(
        [Parameter(Mandatory)][string[]]$Paths
    )
    foreach ($p in $Paths) { if (Test-Path $p) { return $true } }
    return $false
}

function Test-ExecutableInPath {
    param(
        [Parameter(Mandatory)][string[]]$Names
    )
    foreach ($n in $Names) {
        $cmd = Get-Command $n -ErrorAction SilentlyContinue
        if ($cmd) { return $true }
    }
    return $false
}

function Resolve-Detection {
    param(
        [Parameter(Mandatory)][bool]$Detected,
        [Parameter(Mandatory)][string]$Label
    )
    if ($Detected) {
        Write-Output "$Label detected"
        exit 0
    } else { exit 1 }
}

Export-ModuleMember -Function Get-AppByName,Test-FilePaths,Test-ExecutableInPath,Resolve-Detection