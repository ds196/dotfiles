#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias rm='trash-put'
alias lsl='ls -l --color=auto'
alias lsa='ls -A --color=auto'
alias diff='diff --color=auto'

lscmd='ls --color=auto'
alias l=$lscmd
alias sl=$lscmd
alias s=$lscmd
alias dc='cd'

alias df-noloop='df -h | grep -v ^/dev/loop'
alias lsblk-noloop='lsblk | grep -v ^loop'

alias myip='curl ipinfo.io/ip'
alias untar='tar -zxvf'
alias sha='shasum -a 256'
alias lsize='ls --human-readable --size -1 -S --classify'
alias cl='clear'
alias lc='cl'
alias mkd='mkdir -pv'

# From IBM.com/developerworks/linux/library/l-tip-prompt/
if [ "$TERM" = "linux" ]
then
    #we're on the system console or maybe telnetting in
    PS1="\[\e[31;1m\]\u@\H: \[\e[31;2m\]\w\[\e[36;2m\] \$ \[\e[0m\]"
else
    #we're not on the console, assume an xterm
    PS1="\[\e[31;1m\]\w\[\e[36;2m\] \$ \[\e[0m\]" 
fi

PS2="\[\e[36;1m\]> \[\e[0m\]"
PS3="\[\e[36;1m\]?> \[\e[0m\]"
PS4="\[\e[36;1m\]++ \[\e[0m\]"

export PS1
export PS2
export PS3
export PS4

# env vars found in ~/.bash_profile
