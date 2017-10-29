export TERM="xterm-256color" 
# Path to your oh-my-zsh installation.
export ZSH=/home/lab/.oh-my-zsh
DEFAULT_USER="lab"
# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="agnoster"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

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
plugins=(git github atom debian npm nvm node ssh-agent tmux zsh_reload zsh-syntax-highlighting)

# rvm ruby rails bundler gem bower

# User configuration
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/local/games:/usr/games:"

# Local bin
export PATH=${PATH}:~/bin

# Activator
export PATH=${PATH}:~/bin/activator

# Unreal
export PATH=${PATH}:~/src/UnrealEngine/Engine/Binaries/Linux

# ADK
export ANDROID_HOME=~/Android/Sdk
export PATH=${PATH}:$ANDROID_HOME/tools
export PATH=${PATH}:$ANDROID_HOME/platform-tools
export PATH=${PATH}:$ANDROID_HOME/build-tools/23.0.1

# Go
export GOROOT=~/src/go
export GOPATH=~/bin/go
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin

# RVM
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

# Scala
export SCALA_HOME=~/src/scala-2.11.7
export PATH=$PATH:$SCALA_HOME/bin

# InteliJ
export PATH=$PATH:~/bin/idea/bin

# Spark
export SPARK_HOME=~/src/spark-1.5.2
export PATH=$PATH:$SPARK_HOME/bin

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" # This loads nvm

# Racket
export PATH=$PATH:~/src/racket/bin

# Github
# alias git=hub

# PyEnv
export PATH=$PATH:~/.pyenv/bin:$PATH
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# export PATH=$PATH:/usr/local/go/bin

# export MANPATH="/usr/local/man:$MANPATH"



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
alias zshconfig="vim ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"



# case $- in *i*)
#  if [ -z "$TMUX" ]; then exec tmux; fi;;
# esac

function gi() { curl -L -s https://www.gitignore.io/api/$@ ;}
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
function s(){ song "$@" > /dev/null 2>&1  &; }
export VIRTUALENVWRAPPER_PYTHON=/home/lab/.pyenv/shims/python3
source '/home/lab/.pyenv/versions/3.6.2/bin/virtualenvwrapper.sh'

fpath=(~/.zsh/completion $fpath)
autoload -Uz compinit && compinit -i


source $ZSH/oh-my-zsh.sh
