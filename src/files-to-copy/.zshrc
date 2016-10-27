# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="babun"

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

# general settings
export TERM="xterm-256color"
source "$HOME/.antigen/antigen.zsh"

BULLETTRAIN_PROMPT_ORDER=(
    dir
    status
    virtualenv
)
BULLETTRAIN_PROMPT_CHAR=''
BULLETTRAIN_PROMPT_ROOT=true
BULLETTRAIN_PROMPT_ADD_NEWLINE=true
BULLETTRAIN_STATUS_SHOW=true
BULLETTRAIN_VIRTUALENV_SHOW=true
BULLETTRAIN_DIR_SHOW=true
BULLETTRAIN_DIR_EXTENDED=1
BULLETTRAIN_GIT_SHOW=true
BULLETTRAIN_GIT_UNMERGED=' ='
BULLETTRAIN_GIT_AHEAD=' →'
BULLETTRAIN_GIT_BEHIND=' ←'
BULLETTRAIN_GIT_DIVERGED=' ➚'
BULLETTRAIN_GIT_EXTENDED=false
BULLETTRAIN_GIT_PROMPT_CMD="\$(custom_git_prompt)"

custom_git_prompt() {
  prompt=$(git_prompt_info)
  prompt=${prompt//\//\ \ }
  prompt=${prompt//_/\ }
  echo ${prompt}
}

#antigen bundle zsh-users/zsh-syntax-highlighting
#antigen theme bhilburn/powerlevel9k powerlevel9k
#antigen theme prikhi/molokai-powerline-zsh molokai-powerline-zsh
#antigen theme nfarrar/oh-my-powerline oh-my-powerline
#antigen theme https://github.com/caiogondim/bullet-train-oh-my-zsh-theme bullet-train
#antigen theme https://gist.github.com/3750104.git agnoster
#antigen theme https://github.com/halfo/lambda-mod-zsh-theme/ lambda
#antigen theme S1cK94/minimal minimal
#antigen bundle nojhan/liquidprompt

#antigen bundle mafredri/zsh-async
#antigen bundle sindresorhus/pure
#antigen theme frisk

antigen apply


bindkey -v

git_custom_status() {
  local cb=$(current_branch)
  if [ -n "$cb" ]; then
    echo "$(parse_git_dirty)%{$fg_bold[yellow]%}$(work_in_progress)%{$reset_color%}$ZSH_THEME_GIT_PROMPT_PREFIX$(current_branch)$ZSH_THEME_GIT_PROMPT_SUFFIX"
  fi
}

bindkey '^P' up-history
bindkey '^N' down-history
bindkey '^?' backward-delete-char
bindkey '^h' backward-delete-char
bindkey '^w' backward-kill-word
bindkey '^r' history-incremental-search-backward
#
#function zle-line-init zle-keymap-select {
#    VIM_PROMPT="%{$fg_bold[yellow]%} [% NORMAL]%  %{$reset_color%}"
#    RPS1="${${KEYMAP/vicmd/$VIM_PROMPT}/(main|viins)/}$(git_custom_status) $EPS1"
#    zle reset-prompt
#}

#zle -N zle-line-init
#zle -N zle-keymap-select
export KEYTIMEOUT=1
Font="Droid Sans Mono Awesome"
FontHeight=80
Transparency=low

export LS_COLORS='di=1;35:ln=35:so=32:pi=0;33:ex=32:bd=34;46:cd=34;43:su=0;41:sg=0;46:tw=1;34:ow=1;34:'

alias ls='ls --color -h1 --group-directories-first'

zstyle ':completion:*' list-colors 'di=34:ln=35:so=32:pi=33:ex=31:bd=46;34:cd=43;34:su=41;30:sg=46;30:tw=42;30:ow=43;30'

function lg() {
    git add .
    git commit -a -m "$1"
    git push
}

export LD_LIBRARY_PATH=/usr/local/lib
export LIBRARY_PATH=/usr/local/lib
export CPATH=/usr/local/include

alias npm='/cygdrive/c/Program\ Files\ \(x86\)/Microsoft\ Visual\ Studio\ 14.0/Common7/IDE/Extensions/Microsoft/Web\ Tools/External/npm.cmd'
alias fsi='/cygdrive/c/Program\ Files\ \(x86\)/Microsoft\ SDKs/F#/4.0/Framework/v4.0/Fsi.exe'
alias fsc='/cygdrive/c/Program\ Files\ \(x86\)/Microsoft\ SDKs/F#/4.0/Framework/v4.0/Fsc.exe'
alias explore='/home/home/unix_setup/src/files-to-copy/explore.bash'
alias ts='/home/home/unix_setup/src/files-to-copy/tmux-split.sh'

source ~/unix_setup/src/files-to-copy/.shell_prompt.sh

randomise_prompt_colour () {
  PS1="%n%B%F{$((RANDOM % 8))}@%m %~ %(!.#.\$) "
}

autoload -U add-zsh-hook

#add-zsh-hook precmd randomise_prompt_colour

export HOME='/home/home'
stty ixany

export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Devel
source /usr/bin/virtualenvwrapper.sh
