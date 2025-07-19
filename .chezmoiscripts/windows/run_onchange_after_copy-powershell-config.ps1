# PowerShell_profile hash: {{ include "Documents/WindowsPowerShell/Microsoft.PowerShell_profile.ps1" | sha256sum }}
# We also have to copy over the powershell profile
$dest = [Environment]::GetFolderPath([Environment+SpecialFolder]::MyDocuments) + "\WindowsPowerShell"
if (-Not (Test-Path -Path $dest)) {
    New-Item -Path $dest -ItemType Directory
}
Copy-Item -Path "Documents\WindowsPowershell\*" -Destination $dest -Recurse -Force
