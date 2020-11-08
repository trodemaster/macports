# Aliases
alias ls="ls -1 -p"
alias macports="~/code/macports/macports"

# prompt and friends
export PS1="\[\e[;34m\]\u\[\e[1;37m\]@\h\[\e[;32m\]:\W$ \[\e[0m\]"
export DISPLAY=:0
declare -x CLICOLOR=1
# colorize directorys 


    # disable shell warning
    export BASH_SILENCE_DEPRECATION_WARNING=1

    # Path
    export PATH="/opt/local/bin:/opt/local/sbin:/usr/local/bin:$PATH:/$HOME/blakeconfig:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
    
    # add gnu tools to path if available
    if [[ -d /opt/local/libexec/gnubin ]]; then
        export PATH="/opt/local/libexec/gnubin:$PATH"
    fi


    # bash completion
    if [ -f /opt/local/etc/profile.d/bash_completion.sh ]; then
        . /opt/local/etc/profile.d/bash_completion.sh
    fi

# source the fzf config
[ -f ~/.fzf.bash ] && source ~/.fzf.bash
