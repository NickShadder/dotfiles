# self-elevate the script if required
if (-not ([security.principal.windowsprincipal] [security.principal.windowsidentity]::getcurrent()).isinrole([security.principal.windowsbuiltinrole] 'administrator')) {
  if ([int](get-ciminstance -class win32_operatingsystem | select-object -expandproperty buildnumber) -ge 6000) {
    $commandline = "-noexit -file `"" + $myinvocation.mycommand.path + "`" " + $myinvocation.unboundarguments
    start-process -wait -filepath powershell.exe -verb runas -argumentlist $commandline
    exit
  }
}

choco install `
    7zip `
    delta `
    eza `
    fd `
    fzf `
    git `
    gzip `
    jetbrainsmono  `
    jq `
    less `
    neovim `
    python3 `
    ripgrep `
    starship `
    tree `
    tree-sitter `
    wget
