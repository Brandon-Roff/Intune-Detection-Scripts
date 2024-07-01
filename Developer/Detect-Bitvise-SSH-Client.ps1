# This Script Will detect Bitvise SSH Client at the system level
# Bitvise SSH Client Website: https://www.bitvise.com/ssh-client-download

# Path to the Bitvise SSH Client
$BitviseSSHClientPath = "C:\Program Files\Bitvise SSH Client\BvSsh.exe"

#Check if Bitvise SSH Client is installed

if (Test-Path "$BitviseSSHClientPath") {
    Write-Output "Bitvise SSH Client files are present."
    exit 0
} else {
    Write-Output "Bitvise SSH Client files are not present."
    exit 1
}