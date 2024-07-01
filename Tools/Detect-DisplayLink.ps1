# Check for DisplayLink Graphics (Registry Detection Method)
$DisplayLink = Get-ChildItem -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall", "HKLM:\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall" | 
               Get-ItemProperty | 
               Where-Object { $_.DisplayName -match 'DisplayLink Graphics' } | 
               Select-Object -Property DisplayName, DisplayVersion, PSChildName

# Display the version and PSChildName of DisplayLink
$DisplayLink.DisplayVersion
$DisplayLink.PSChildName

# Create Text File with DisplayLink Graphics Registry Detection Method
$FilePath = "C:\Windows\Temp\DisplayLink_Graphics_Detection_Method.txt"
New-Item -Path "$FilePath" -Force
Set-Content -Path "$FilePath" -Value @"
If ([Version](Get-ItemPropertyValue -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\$($DisplayLink.PSChildName)", "HKLM:\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Uninstall\$($DisplayLink.PSChildName)" -Name DisplayVersion -ErrorAction SilentlyContinue) -ge "$($DisplayLink.DisplayVersion)") {
    Write-Host "Installed"
    Exit 0
} else {
    Exit 1
}
"@

# Open the file
Invoke-Item $FilePath