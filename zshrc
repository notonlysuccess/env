# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

# User configuration

export PATH=$HOME/bin:/usr/local/bin:$PATH
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# short
alias b='cd -'
alias p='pwd'
alias r='npm run'
alias rb='npm run build'
alias rw='npm run watch'
alias rv='npm run dev'
alias rt='npm run test'
alias t='tmux -2'
alias npm='node /root/node-v9.1.0-linux-x64/bin/npm'

# git
alias ga='git add -A'
alias gb='git checkout -b'
alias gc='git commit -m'
alias gcl='git config --list'
alias gd='git diff'
alias gdt='git difftool --tool=vimdiff'
# alias gl='git log --graph --abbrev-commit --decorate --format=format:"%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)" --all'
alias gl='git log --graph --abbrev-commit --decorate --format=format:"%C(bold blue)%h%C(reset) - %C(bold cyan)%aD%C(reset) %C(bold green)(%ar)%C(reset)%C(bold yellow)%d%C(reset)%n""          %C(white)%s%C(reset) %C(dim white)- %an%C(reset)" --all'
alias gp='git push'
alias gpu='git pull'
alias gs='git status -s'

# tmux
alias tl='tmux ls'
alias ta='tmux attach -t'

# system
alias cls='clear'
alias copy='pbcopy < '
alias ll='ls -l'
alias la='ls -a'
alias vi='vim'
alias javac="javac -J-Dfile.encoding=utf8"
alias grep="grep --color=auto"
alias -s html=vi 
alias -s rb=vi
alias -s py=vi
alias -s js=vi
alias -s c=vi
alias -s java=vi
alias -s txt=vi
alias -s gz='tar -xzvf'
alias -s tgz='tar -xzvf'
alias -s zip='unzip'
alias -s bz2='tar -xjvf'

alias qcloud='ssh ubuntu@139.199.73.145'

alias work='cd /mnt/c/Users/noton/Documents/workspace'
alias engine='cd /mnt/c/Users/noton/Documents/workspace/tapmusic/engine'
alias as='cd /mnt/c/Users/noton/Documents/workspace/wxapp-client-lib/src/app-service-engine'
alias vd='cd /mnt/c/Users/noton/Documents/workspace/wxapp-client-lib/src/virtual-dom'
alias sdk='cd /mnt/c/Users/noton/Documents/workspace/wxapp-client-lib/src/sdk'
alias exp='cd /mnt/c/Users/noton/Documents/workspace/wxapp-client-lib/src/exparser'
alias com='cd /mnt/c/Users/noton/Documents/workspace/wxapp-client-lib/src/wx-component'
alias tools='cd /mnt/c/Users/noton/Documents/workspace/wechat-devtools'
alias doc='cd /mnt/c/Users/noton/Documents/workspace/document'
alias design='cd /mnt/c/Users/noton/Documents/workspace/design'
alias widget='cd /mnt/c/Users/noton/Documents/workspace/widget'
alias vendor='cd /mnt/c/Users/noton/Documents/workspace/wxapp-client-lib'
alias hosts='vi /mnt/c/Windows/System32/drivers/etc/hosts'
alias music='cd /mnt/c/Users/noton/Documents/workspace/tapmusic/src'
alias game='cd /mnt/c/Users/noton/Documents/workspace/braintrainingcamp/src'

alias net-out='export https_proxy="http://dev-proxy.oa.com:8080"; export http_proxy="http://dev-proxy.oa.com:8080"'
alias net-in='export https_proxy=""; export http_proxy=""'

work
