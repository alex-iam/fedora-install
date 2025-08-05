autoload -Uz compinit
compinit

source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
# Completions
zstyle ':completion:*' rehash true

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


alias ls='ls --color'


source <(fzf --zsh)
bindkey '^[[A' fzf-history-widget

if [[ "$TERM" != "dumb" ]]; then
  eval "$(starship init zsh)"
fi
