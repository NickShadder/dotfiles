# On Windows, we have to copy the neovim config to the %LOCALAPPDATA%
# See https://neovim.io/doc/user/starting.html#base-directories
$dest = "$env:LOCALAPPDATA\nvim"
if (-Not (Test-Path -Path $dest)) {
    New-Item -Path $dest -ItemType Directory
}
Copy-Item -Path ".config\nvim\*" -Destination $dest -Recurse -Force
