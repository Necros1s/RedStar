# export PATH=$HOME/bin:/usr/local/bin:$PATH

export CFLAGS="-O3 -pipe -march=native"
export CXXFLAGS="$CFLAGS"
export MAKEFLAGS="-j8"
export XDG_CONFIG_HOME="$HOME/.config"
export TERMINAL="kitty"
export VISUAL="nvim"
export EDITOR="$VISUAL"
export BROWSER="firefox"
export ZSH="/home/matthew/.oh-my-zsh"

ZSH_THEME="redstar"

# HYPHEN_INSENSITIVE="true"

# DISABLE_AUTO_UPDATE="true"

# DISABLE_UPDATE_PROMPT="true"

# export UPDATE_ZSH_DAYS=13

# DISABLE_MAGIC_FUNCTIONS="true"

# DISABLE_LS_COLORS="true"

# DISABLE_AUTO_TITLE="true"

# ENABLE_CORRECTION="true"

COMPLETION_WAITING_DOTS="true"

# DISABLE_UNTRACKED_FILES_DIRTY="true"

# HIST_STAMPS="mm/dd/yyyy"

# ZSH_CUSTOM=/path/to/new-custom-folder

plugins=(git)

source $ZSH/oh-my-zsh.sh


# export MANPATH="/usr/local/man:$MANPATH"

# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

alias vim="nvim"
alias irc="irssi"
alias gc="git clone"
alias xbi="sudo xbps-install"
alias xbq="sudo xbps-query -Rs"
alias xbr="sudo xbps-remove"
alias sedit="sudo nvim"
alias edit="nvim"
alias rere="sudo reboot"
alias la="ls -a"
alias calendar="calcurse"
alias icat="kitty +kitten icat"
alias cpd="cp -R"
alias scpd="sudo cp -R"
alias mp3="ncmpcpp"
alias wifi="sudo nmtui"
alias sdnow="sudo poweroff"
alias get="wget -q --show-progress --progress=bar:force:noscroll"
