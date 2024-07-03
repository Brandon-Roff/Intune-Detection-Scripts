# This Script Will Detect if Notepad++ is installed on the machine.
# Notepad++ Website: https://notepad-plus-plus.org/

# Notepad++ Install Path

$NotepadPlusPlusPath = "$env:ProgramFiles\Notepad++\notepad++.exe"

# Check if Notepad++ is installed

if (Test-Path $NotepadPlusPlusPath) {
    Write-Host "Notepad++ is installed"
    exit 0
} else {
    Write-Host "Notepad++ is not installed"
    exit 1
}