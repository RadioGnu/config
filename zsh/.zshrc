#Colorscript
colorscript -r

#Aliases
alias v='nvim'
alias grep='grep --color'
alias _='sudo'
alias ll='exa -l --icons --git --group-directories-first'
alias la='exa -la --icons --git --group-directories-first'
alias lt='exa -aT --icons --git --group-directories-first'
alias reload='source ~/.zshrc'
alias ne='emacs -nw'

# confirm before overwriting something
alias cp="cp -i"
alias mv='mv -i'
alias rm='rm -i'

#Prompt
autoload -Uz compinit
zstyle ':completion:*' menu select
zmodload -i zsh/complist
compinit
_comp_options+=(globdots)       #Include hidden files

PROMPT='[%B%(?.%F{green}√.%F{red}?%?)%f %b%F{51}%n %B%F{magenta}%~%f] %F{40}> %b%f' 
RPROMPT='[%B%F{red}%*%f%b]' 

export EDITOR="/usr/bin/nvim"
export NNN_OPTS="dE"
export NNN_NNN_BMS="d:$HOME/Documents;D:$HOME/Downloads;m:$HOME/mc_server/"
export NNN_COLORS='1234'

# vi mode
bindkey -v
export KEYTIMEOUT=1
# Use vim keys in tab complete menu:
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history

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
export SYNTAX_HIGHLIGHT=/usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
[ -f $SYNTAX_HIGHLIGHT ] && source $SYNTAX_HIGHLIGHT
