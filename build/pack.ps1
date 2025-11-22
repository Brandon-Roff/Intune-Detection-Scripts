param(
    [string]$Version,
    [string]$OutputDir = "output"
)

if (-not $Version) {
    # Auto version: increment build number based on existing tags or use timestamp fallback
    try {
        $tags = git tag 2>$null | Where-Object { $_ -match '^v[0-9]+\.[0-9]+\.[0-9]+$' }
        if ($tags) {
            $latest = ($tags | Sort-Object { $_ -replace 'v','' -as [version] } | Select-Object -Last 1)
            $vObj = [version]($latest -replace 'v','')
            $next = [version]::new($vObj.Major, $vObj.Minor, $vObj.Build + 1)
            $Version = "v$($next.ToString())"
        } else {
            $Version = 'v1.0.0'
        }
    } catch { $Version = 'v1.0.0' }
}

$root = Split-Path $PSScriptRoot -Parent
$out = Join-Path $PSScriptRoot $OutputDir
if (Test-Path $out) { Remove-Item $out -Recurse -Force }
New-Item -ItemType Directory -Path $out | Out-Null

# Copy relevant folders
$copyItems = @('modules','AV','Browsers (System)','Buisness','Developer','Media','Monitoring','Network Tools','Productivity','RMM','Tools','VPN')
foreach ($item in $copyItems) {
    $src = Join-Path $root $item
    if (Test-Path $src) { Copy-Item $src (Join-Path $out $item) -Recurse -Force }
}

# Manifest
$scripts = Get-ChildItem -Path $out -Filter *.ps1 -Recurse | Select-Object -ExpandProperty FullName
$manifest = [PSCustomObject]@{
    PackageVersion = $Version
    BuildTimeUtc   = (Get-Date).ToUniversalTime().ToString('u')
    ScriptCount    = $scripts.Count
}
$manifest | ConvertTo-Json -Depth 3 | Out-File (Join-Path $out 'manifest.json') -Encoding utf8

# Create zip
$zipName = "Intune-Detection-Scripts-$Version.zip"
$zipPath = Join-Path $out $zipName
Compress-Archive -Path "$out/*" -DestinationPath $zipPath -Force
Write-Output "Created $zipPath"

# Output version for GitHub Actions
Write-Output "::set-output name=package_version::$Version"