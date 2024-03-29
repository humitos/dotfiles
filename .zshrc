# http://www.zsh.org/
# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/home/humitos/.oh-my-zsh

# There was a problem with all the commands
# _z_precmd:1: nice(5) failed: no such process
# unsetopt BG_NICE

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="avit"

# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

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
plugins=(
  # archlinux

  # aterminal

  # Disabled because it's broken
  # Traceback (most recent call last):
  # File "/usr/bin/autojump", line 39, in <module>
  #     from autojump_argparse import ArgumentParser
  # ModuleNotFoundError: No module named 'autojump_argparse'
  # pacman -S autojump
  # autojump

  asdf

  # celery
  colored-man-pages
  # colorize
  command-time
  common-aliases
  cp
  direnv
  # django
  # docker-compose
  # docker
  dotenv
  extract

  # https://github.com/zdharma/history-search-multi-word
  history-search-multi-word

  gpg-agent

  # interfers with my own commands
  # emacs

  # git
  # git-extra-commands

  # I don't like that it expands the alias
  # globalias

  # pacman -S httpie
  # httpie

  # pyenv
  python
  sudo
  # supervisor
  ssh-agent

  # pacman -S thefuck
  # thefuck

  # FIXME: this plugin interferes with UP key to go back in the history
  # git clone https://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions
  # zsh-autosuggestions

  # auto jump into directories
  # yay -S z-git
  z

  # https://github.com/zsh-users/zsh-syntax-highlighting
  # Note that zsh-syntax-highlighting must be the last plugin sourced
  # zsh-syntax-highlighting

  # https://github.com/nv1t/zsh-universal-variables
  # zsh-universal-variables
)

ZSH_DOTENV_FILE=.dotenv
ZSH_DOTENV_PROMPT=false

zstyle :omz:plugins:ssh-agent lifetime 10h

# https://github.com/robbyrussell/oh-my-zsh
source $ZSH/oh-my-zsh.sh


# User configuration

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
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

source ~/.zsh/aliases
source ~/.zsh/autosuggest
source ~/.zsh/history
source ~/.zsh/functions
# source ~/.zsh/fzf
source ~/.zsh/variables
source ~/.zsh/ps1

# autoload -U +X bashcompinit && bashcompinit
# complete -o nospace -C /usr/bin/vault vault

# https://github.com/pyenv/pyenv/issues/784#issuecomment-443792076
# eval "$(pyenv virtualenv-init -)"

# nodenv
# eval "$(nodenv init -)"

# export PATH="$HOME/.rbenv/bin:$PATH"
# eval "$(rbenv init -)"

# https://github.com/syndbg/goenv/blob/master/INSTALL.md
# export GOENV_ROOT="$HOME/.goenv"
# export PATH="$GOENV_ROOT/bin:$PATH"
# eval "$(goenv init -)"
# export PATH="$GOROOT/bin:$PATH"
# export PATH="$GOPATH/bin:$PATH"


# pipx
# https://github.com/pypa/pipx
export PATH=$HOME/.local/bin:$PATH
source ${XDG_CONFIG_HOME:-$HOME/.config}/asdf-direnv/zshrc
source "${XDG_CONFIG_HOME:-$HOME/.config}/asdf-direnv/zshrc"
