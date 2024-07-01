# This Script Will Check If DB Browser for SQlite is installed

# Install Path

$DBBrowserPath = "C:\Program Files\DB Browser for SQLite\DB Browser for SQLite.exe"

#Check if DB Browser for SQLite is installed

if (Test-Path "$DBBrowserPath") {
    Write-Output "DB Browser for SQLite files are present."
    exit 0
} else {
    Write-Output "DB Browser for SQLite files are not present."
    exit 1
}