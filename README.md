# Nick's dotfiles

This is my attempt to organize my dotfiles using [chezmoi](https://www.chezmoi.io/).

The dotfiles are mostly used to configure the following projects:
- [Zsh](https://www.zsh.org/) as the user shell
- [Starship](https://starship.rs) as the shell theme
- [tmux](https://tmux.github.io/) for organizing terminal screen space
- [NeoVim](https://neovim.io/) as the text editor

### Get Started

On Linux or MacOS, ensure `curl` and `git` are installed, then execute this command:
```sh
sh -c "$(curl -fsLS get.chezmoi.io/lb)" -- init --apply NickShadder
```

On Windows, ensure `git` is installed, then run this in PowerShell:
```ps
(irm -useb https://get.chezmoi.io/ps1) | powershell -c - bin/chezmoi init --apply NickShadder
```

### Quick Reference

This is a short reference on how to work with this project.

1. First, pull latest updates with `chezmoi git pull -- --autostash --rebase`.  
2. Then, run `chezmoi diff` to see the changes.  
3. Finally, apply the changes with `chezmoi apply`.

## TODO
- [ ] Move Windows installation from Chocolatey to [Scoop](https://scoop.sh)
- [ ] Continue NeoVim setup
  - [ ] properly configure completion
  - [ ] configure snack.nvim
