# This Script Will Detect if Foxit PDF Reader is installed on the machine.
# Foxit PDF Reader Website: https://www.foxitsoftware.com/pdf-reader/

# Foxit PDF Reader Install Path

$FoxitPDFReaderPath = "$env:ProgramFiles (x86)\Foxit Software\Foxit PDF Reader\FoxitPDFReader.exe"

# Check if Foxit PDF Reader is installed

if (Test-Path $FoxitPDFReaderPath) {
    Write-Host "Foxit PDF Reader is installed"
    exit 0
} else {
    Write-Host "Foxit PDF Reader is not installed"
    exit 1
}