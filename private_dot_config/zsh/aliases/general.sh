# Global aliases
alias -g G='| grep'
alias -g L='| less' 

if [[ -x "$(command -v nvim)" ]]; then
  # NeoVim is available!
  alias vim='nvim'
  GLOBALIAS_FILTER_VALUES+=(vim)
fi

if [[ -x "$(command -v batcat)" ]]; then
  # The bat pager is available!
  # https://github.com/sharkdp/bat
  alias bat='batcat'
  alias -g B='| bat'
  GLOBALIAS_FILTER_VALUES+=(bat)
  export BAT_THEME='TwoDark'
  export MANPAGER="sh -c 'col -bx | batcat -l man -p'"
fi

# File listings
if [[ -x "$(command -v eza)" ]]; then
  # The eza file cataloger is available!
  # https://github.com/eza-community/eza
  alias ls='eza --icons --color-scale --group-directories-first'
  alias ll='ls --all --long'
  alias lls='ll --sort size'
  alias llss='lls --reverse'
  alias l='eza -1 --group-directories-first'
  alias tree='eza --tree --icons'
  GLOBALIAS_FILTER_VALUES+=(ls ll lls llss l tree)
else
  # No fancy file cataloger available
  # Setting up basic aliases
  alias ll='ls -lAh'
  alias lls='ll -S'
  alias llss='lls -r'
  alias l='ls -1'
  GLOBALIAS_FILTER_VALUES+=(ls ll lls llss l)
fi
