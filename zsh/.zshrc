#Flex
neofetch

#Aliases
alias v='nvim'
alias grep='grep --color'
alias _='sudo'
alias ll='exa -lb --icons --git'
alias la='exa -lab --icons --git'
alias reload='source ~/.zshrc'

#Prompt
autoload -Uz compinit
zstyle ':completion:*' menu select
compinit

PROMPT='%F{red}%*%F{green} %?%F{blue} %~%F{magenta} %#%f ' 

export EDITOR="/usr/bin/nvim"

# vi mode
bindkey -v
export KEYTIMEOUT=1

# Base16 Shell
BASE16_SHELL="$HOME/.config/base16-shell/"
[ -n "$PS1" ] && \
    [ -s "$BASE16_SHELL/profile_helper.sh" ] && \
        eval "$("$BASE16_SHELL/profile_helper.sh")"

#fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Edit line in vim with ctrl-e:
autoload edit-command-line; zle -N edit-command-line
bindkey '^e' edit-command-line

# Load zsh-syntax-highlighting; should be last.
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
