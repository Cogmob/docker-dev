DISABLE_AUTO_UPDATE="true"

DISABLE_AUTO_TITLE="true"
DISABLE_UNTRACKED_FILES_DIRTY="true"
plugins=(git)

export TERM="xterm-256color"
[ -n "$TMUX" ] && export TERM=screen-256color

bindkey -v

export KEYTIMEOUT=1
# Font="Droid Sans Mono Awesome"
FontHeight=80
Transparency=low

export LS_COLORS='di=1;35:ln=35:so=32:pi=0;33:ex=32:bd=34;46:cd=34;43:su=0;41:sg=0;46:tw=1;34:ow=1;34:'

alias ls='ls --color -h1 --group-directories-first'

zstyle ':completion:*' list-colors 'di=34:ln=35:so=32:pi=33:ex=31:bd=46;34:cd=43;34:su=41;30:sg=46;30:tw=42;30:ow=43;30'
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'
autoload -U compinit && compinit
zmodload -i zsh/complist

[[ -a ~/.bin/tmuxinator ]] && . ~/.bin/tmuxinator.zsh

function lg() {
    git commit -m "$*"
    git push
}

function cclg() {
    branch=$(git rev-parse --abbrev-ref HEAD)
    author="Luke Avery <luke.avery@cambridgeconsultants.com>"
    git commit -m "$*" --author=$author
    url=$(git remote get-url origin)
    url="${url:0:8}lga:Bravabrava314@${url:8}"
    git push $url $branch
}

export PATH=$(npm root -g):$PATH

export LD_LIBRARY_PATH=/usr/local/lib
export LIBRARY_PATH=/usr/local/lib
export CPATH=/usr/local/include

export CYGWIN="winsymlinks"
export EDITOR="vim"

PROMPT="

        "
preexec() { print "" }


zle_highlight=( default:fg=colour3 )

setopt extendedglob
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=3'

# allow running shell command then enter interactive
if [[ $1 == eval ]]
then
    "$@"
set --
fi

# source '/home/.babun-docker/setup.sh'
# docker-machine start default
# eval $(docker-machine env default)
set shell=zsh\ -l
