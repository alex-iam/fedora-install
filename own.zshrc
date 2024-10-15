autoload -Uz compinit
compinit

source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

# History
HISTSIZE=5000
HISTFILE=~/.zsh_history
SAVEHIST=$HISTSIZE
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups

# A
alias ls='ls --color'

# Pyenv
PYENV_ROOT=$HOME/.pyenv
path+=$PYENV_ROOT/bin
eval "$(pyenv init -)"

eval "$(starship init zsh)"
