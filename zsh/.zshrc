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

## Git
alias ga='git add'
alias gcm='git commit -m'
alias gd='git diff'
alias gc='git checkout'
alias gcb='git checkout -b'
alias glg='git log --graph --abbrev-commit'
alias gldog='git log --all --decorate --oneline --graph'
alias gps='git push'
alias gst='git status'

## confirm before overwriting something
alias cp="cp -vi"
alias mv='mv -vi'
alias rm='rm -vI'

# History in cache directory
HISTSIZE=10000000
SAVEHIST=10000000
HISTFILE=~/.cache/zsh/history

setopt HIST_IGNORE_ALL_DUPS  # do not put duplicated command into history list
setopt HIST_SAVE_NO_DUPS  # do not save duplicated command
setopt HIST_REDUCE_BLANKS  # remove unnecessary blanks
setopt EXTENDED_HISTORY #record command start time

#Completion settings
autoload -Uz compinit
zstyle ':completion:*' menu select
zmodload -i zsh/complist
compinit
_comp_options+=(globdots)       #Include hidden files

#Prompt
NEWLINE=$'\n'   #Newline before the prompt
PROMPT="[%B%(?.%F{green}√.%F{red}?%?)%f %b%F{51}%n%f@%F{yellow}%m %B%F{magenta}%~%f] ${NEWLINE}%F{40}> %b%f"
RPROMPT='[%B%F{red}%*%f%b]' 

export EDITOR="/usr/bin/nvim"
export NNN_OPTS="dE"
export NNN_NNN_BMS="d:$HOME/Documents;D:$HOME/Downloads;m:$HOME/mc_server/"
export NNN_COLORS='1234'

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
# Top is for desktop,bottom for termux.
# Probably a way to do an if condition for OS.
export SYNTAX_HIGHLIGHT=/usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# export SYNTAX_HIGHLIGHT=~/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
[ -f $SYNTAX_HIGHLIGHT ] && source $SYNTAX_HIGHLIGHT
