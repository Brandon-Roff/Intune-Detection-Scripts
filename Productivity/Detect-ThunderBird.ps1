#This Script Will detect ThunderBird at the system level
# Mozilla ThunderBird Website: https://www.thunderbird.net/en-US/

# Path to the ThunderBird
$ThunderBirdPath = "C:\Program Files\Mozilla Thunderbird\thunderbird.exe"

#Check if ThunderBird is installed

if (Test-Path "$ThunderBirdPath") {
    Write-Output "ThunderBird files are present."
    exit 0
} else {
    Write-Output "ThunderBird files are not present."
    exit 1
}

```

