#this will detect the user based install of Obsidian Notes
# Obsidian Notes Project Website: 

#Obsidian Install Path
$ObsidianPath = "$env:USERPROFILE\AppData\Local\Obsidian\Obsidian.exe"

# Check if Obsidian is installed

if (Test-Path $ObsidianPath) {
    Write-Host "Obsidian is installed"
    exit 0
} else {
    Write-Host "Obsidian is not installed"
    exit 1
}