#### oh-my-zsh config ####
####### location: ~ ######

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
ZSH_THEME="bira"

# Uncomment the following line to change how often to auto-update (in days).
 export UPDATE_ZSH_DAYS=5

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
plugins=(rails ruby git)

source $ZSH/oh-my-zsh.sh

# User configuration
export PATH="/Users/Adam/.rbenv/shims:/Users/Adam/.rbenv/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin"
# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Aliases

# Directory Shortcuts
alias zconfig="mate ~/.zshrc"
alias dropbox="cd /Volumes/Internal2TB/Dropbox"
alias comcast="cd /Volumes/Internal2TB/Dropbox/Dev/Comcast"
alias mydev="cd /Volumes/Internal2TB/Dropbox/Dev/MyDev"
alias dev="cd /Volumes/Internal2TB/Dropbox/Dev"

# SSH Logins
alias wiw="ssh svc_wiw@app-br-17e.idk.cable.comcast.com"
alias ivsms="ssh svc_sos@162.150.11.206 -i ~/.ssh/opsen-tools.pem"
alias digitalocean="ssh root@104.131.43.54 -i ~/.ssh/dig_ocean"