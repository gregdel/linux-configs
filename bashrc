# Bash configuration

# allow utf8
stty cs8 -istrip -parenb
bind 'set convert-meta off'
bind 'set meta-flag on'
bind 'set output-meta on'

# Import personnal conf
if [ -f ~/.bashrc_local ]; then
    source ~/.bashrc_local
fi

# Import my global shell functions
if [ -f ~/.shell_functions ]; then
    source ~/.shell_functions
fi

# Import PS1
if [ -f ~/.bashrc_ps1 ]; then
    source ~/.bashrc_ps1
fi

# Set appropriate ls alias
case $(uname -s) in
    Darwin|FreeBSD)
        alias ls="ls -FG"
        ;;
    Linux)
        alias ls="ls --color=always -F"
        ;;
esac

# cd aliases
alias cd..='cd ..'
alias ..='cd ..'
alias ...='cd ../../'
alias ....='cd ../../../'

# Reload bash configuration
function reload_bash {
    source ~/.bashrc
}
