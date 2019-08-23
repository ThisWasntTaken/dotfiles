#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
alias ls='ls --color=auto'

TERM=xterm-256color

PS1="\[$(tput bold)\]";
PS1+="\[$(tput setaf 72)\]\W ";
PS1+="\[$(tput setaf 124)\]"
PS1+=$'\u2771';
PS1+="\[$(tput setaf 166)\]"
PS1+=$'\u2771';
PS1+="\[$(tput setaf 172)\]"
PS1+=$'\u2771 ';
PS1+="\[$(tput sgr0)\]";
export PS1;

vicd()
{
    local dst="$(command vifm --choose-dir - "$@")"
    if [ -z "$dst" ]; then
        echo 'Directory picking cancelled/failed'
        return 1
    fi
    cd "$dst"
}
