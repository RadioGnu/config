#Functions
## nnn cd on quit
n ()
{
    # Block nesting of nnn in subshells
    [ "${NNNLVL:-0}" -eq 0 ] || {
        echo "nnn is already running"
        return
    }

    # The behaviour is set to cd on quit (nnn checks if NNN_TMPFILE is set)
    # If NNN_TMPFILE is set to a custom path, it must be exported for nnn to
    # see. To cd on quit only on ^G, remove the "export" and make sure not to
    # use a custom path, i.e. set NNN_TMPFILE *exactly* as follows:
    #      NNN_TMPFILE="${XDG_CONFIG_HOME:-$HOME/.config}/nnn/.lastd"
    export NNN_TMPFILE="${XDG_CONFIG_HOME:-$HOME/.config}/nnn/.lastd"

    # Unmask ^Q (, ^V etc.) (if required, see `stty -a`) to Quit nnn
    # stty start undef
    # stty stop undef
    # stty lwrap undef
    # stty lnext undef

    # The command builtin allows one to alias nnn to n, if desired, without
    # making an infinitely recursive alias
    command nnn "$@"

    [ ! -f "$NNN_TMPFILE" ] || {
        . "$NNN_TMPFILE"
        rm -f -- "$NNN_TMPFILE" > /dev/null
    }
}
#Aliases

##Config
alias dot='git --git-dir=$HOME/.cfg --work-tree=$HOME'
##General
alias v='nvim'
alias _='sudo'
alias ll='exa -l --icons --group-directories-first'
alias la='exa -la --icons --group-directories-first'
##Tree format, remove .git directories
alias lt='exa -aT -I.git --icons --group-directories-first'
alias reload='source ~/.zshrc'

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
alias gpl='git pull --rebase'

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
setopt complete_aliases
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
export VISUAL="/usr/bin/nvim"
export NNN_PLUG="D:dragdrop"
export NNN_USE_EDITOR=1

platform=$(uname -o)
# Load zsh-syntax-highlighting; should be last.
if [ $platform = 'GNU/Linux' ]; then
    export SYNTAX_HIGHLIGHT=/usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
    colorscript -r
elif [ $platform = 'Android' ]; then
    export SYNTAX_HIGHLIGHT=~/apps/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
fi
[ -f $SYNTAX_HIGHLIGHT ] && source $SYNTAX_HIGHLIGHT

