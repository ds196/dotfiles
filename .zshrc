# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
export PATH=$HOME/.local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
 HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
	# Pre-installed
	colored-man-pages colorize command-not-found
	# Pre-installed aliases
	git archlinux python
	# Installed by me
	zsh-autosuggestions zsh-syntax-highlighting
)

export ZSH_COMPDUMP=$ZSH/cache/.zcompdump-$HOST
source $ZSH/oh-my-zsh.sh

# User configuration

# GCC Compiler
export CC=gcc-11
export CXX=g++-11

# History file
HISTFILE=~/.cache/.zshhistfile
HISTSIZE=2000
SAVEHIST=2000

. /home/david/.zshrc.comp

# Expand aliases with TAB
zstyle ':completion:*' completer _expand_alias _complete _ignored

# idk what this does but I had it on my desktop
setopt interactive_comments

# Remove the right margin for the right prompt
export ZLE_RPROMPT_INDENT=0

# Vi mode
bindkey -v

# XDG env variables
export XDG_CONFIG_HOME=$HOME/.config
export XDG_CACHE_HOME=$HOME/.cache
export XDG_DATA_HOME=$HOME/.local/share

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi
export EDITOR="vim"
export VISUAL="vim"

# Allow bat to colorize man pages
export MANPAGER="sh -c 'col -bx | bat -l man -p'"

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Colors and other useful
alias diff='diff --color=auto'
alias grep='grep --color=auto -n'
alias ip='ip -color=auto'
alias ls='ls --color=auto -h'
alias g++='g++ -Wall -g -std=c++11'

# Different command
alias rm='trash-put'
alias rmdir='trash-put'
#alias sudo='doas'
alias nvim='vim'
alias cat='bat'

# Shorter command
alias cl='clear'
alias _='doas'
alias mkd='mkdir -pv'
alias rd='rmdir -v'
alias pacupd='pacupg'

# but longer idk
alias startubuntu='xhost +local: & sudo ~/scripts/tschroot.sh ~/myubuntu'
alias lsize='ls --human-readable --size -1 -S --classify'
alias yt='youtube-dl --add-metadata -i'
alias cprult='rsync --info=progress2 -auvzpEogtU'
alias untar='tar -xvf'
alias untarbz2='untar -j'
alias untargz='untar -z'
alias sha='shasum -a 256'
alias cleancache='sudo $HOME/scripts/cleanvar.sh'
#alias blackhawk='ssh -Y ds0196@blackhawk.ece.uah.edu'
alias blackhawk='sshpass -f $HOME/blackhawkpass ssh -Y ds0196@blackhawk.ece.uah.edu'
aurclone () {
	git clone "https://aur.archlinux.org/${$1}.git"
}

# Sudo
alias svim='sudo vim'
alias scp='sudo cp'
alias srm='sudo rm'
alias smv='sudo mv'
alias smkd='sudo mkdir -pv'

# Shorter command but without additional input
alias update='sudo pacman -Syu && yay -a'
alias updatep10k='git -C ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k pull'
alias fwsetup='systemctl reboot --firmware-setup'
alias df-noloop='df -h | grep -v ^/dev/loop'
alias lsblk-noloop='lsblk | grep -v ^loop'
alias myip='curl ipinfo.io/ip'
alias mkgrubconfig='sudo grub-mkconfig -o /boot/grub/grub.cfg'
alias p10kcolormap='for i in {0..255}; do print -Pn "%K{$i} %k%F{$i}${(l:3::0:)i}%f " ${${(M)$((i%6)):#3}:+$'\n'}; done'
alias wmclass='xprop WM_CLASS'
alias rmorphans='sudo pacman -Rns $(pacman -Qqdt)'

# When I can't type
alias dc='cd'
alias lc='cl'
alias sl='ls'


# Enforce powerline10k configuration depending on environment
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
if	[ "$TERM" = "linux" ]
then
	[[ ! -f ~/.p10k.ascii.zsh ]]  || source ~/.p10k.ascii.zsh
elif	[ "$TERM_PROGRAM" = "vscode" ]
then
	[[ ! -f ~/.p10k.vscode.zsh ]] || source ~/.p10k.vscode.zsh
else
	[[ ! -f ~/.p10k.uni.zsh ]]    || source ~/.p10k.uni.zsh
fi
