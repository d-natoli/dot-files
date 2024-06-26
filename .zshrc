# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="theunraveler"

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
plugins=(git bundler)

# User configuration

export PATH=$HOME/bin:/usr/local/sbin:$PATH
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
# Config aliases
alias zshconf="vim ~/.zshrc"
alias szsh="source ~/.zshrc"
alias vimconf="vim ~/.vimrc"
alias svim="source ~/.zshrc"

# Git aliases
alias gbd="git branch -D"
alias gmm="git merge main"
alias gpf="git push -f"
alias gpp="git pull -p"
alias gpu="git push -u origin"
alias grm="git rebase main"
alias gstu="git stash -k -u"

# Tig aliases
alias tb="tig blame"
alias tl="tig log"
alias ts="tig status"

# Rails aliases
alias rc='bundle exec rails c'
alias rdbm='bundle exec rake db:migrate'
alias rdbc='bundle exec rake db:create db:schema:load'

# Docker aliases
alias dcb="docker-compose build"
alias dcu="docker-compose up --force-recreate"
alias dcd="docker-compose down"
alias dcr="docker-compose run"
alias dcrs="docker-compose restart"
alias dgc="docker run --rm -v /var/run/docker.sock:/var/run/docker.sock -v /etc:/etc spotify/docker-gc"
alias dclu="docker volume rm \$(docker volume ls -qf dangling=true)"
alias drmi="docker rmi \$(docker images -f \"dangling=true\" -q)"
alias dprune="docker system prune"
alias dkill="docker kill `docker ps | cut -d' ' -f1`"
alias drmvol="docker volume rm `docker volume ls -qf dangling=true`"

# ctags aliases
alias ctagsr="ctags -R --exclude=.git --exclude=node_modules"

# kubectl aliases
alias kns="kubectl config set-context --current --namespace"
alias kg="kubectl get"

export VISUAL=vim
export EDITOR="$VISUAL"

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
if which nodenv > /dev/null; then eval "$(nodenv init -)"; fi

