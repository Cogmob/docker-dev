# export HOME='/home'
export ZSH=$HOME/.oh-my-zsh
DISABLE_AUTO_UPDATE="true"
DISABLE_AUTO_TITLE="true"
DISABLE_UNTRACKED_FILES_DIRTY="true"
plugins=(git)
if [ -e ~/bin ]
then
else
    echo 'bin should exist'
    unlink ~/bin
fi

source $ZSH/oh-my-zsh.sh

export TERM="xterm-256color"
[ -n "$TMUX" ] && export TERM=screen-256color

source "$HOME/.antigen/antigen.zsh"

antigen bundle RobSis/zsh-completion-generator

antigen apply


bindkey -v

#git_custom_status() {
#  local cb=$(current_branch)
#  if [ -n "$cb" ]; then
#    echo "$(parse_git_dirty)%{$fg_bold[yellow]%}$(work_in_progress)%{$reset_color%}$ZSH_THEME_GIT_PROMPT_PREFIX$(current_branch)$ZSH_THEME_GIT_PROMPT_SUFFIX"
#  fi
#}
#
#bindkey '^P' up-history
#bindkey '^N' down-history
#bindkey '^?' backward-delete-char
#bindkey '^h' backward-delete-char
#bindkey '^w' backward-kill-word
#bindkey '^r' history-incremental-search-backward
#
export KEYTIMEOUT=1
Font="Droid Sans Mono Awesome"
FontHeight=80
Transparency=low

export LS_COLORS='di=1;35:ln=35:so=32:pi=0;33:ex=32:bd=34;46:cd=34;43:su=0;41:sg=0;46:tw=1;34:ow=1;34:'

alias ls='ls --color -h1 --group-directories-first'

zstyle ':completion:*' list-colors 'di=34:ln=35:so=32:pi=33:ex=31:bd=46;34:cd=43;34:su=41;30:sg=46;30:tw=42;30:ow=43;30'
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'

function lg() {
    git add . :/
    git commit -am "$1"
    git push
}

export LD_LIBRARY_PATH=/usr/local/lib
export LIBRARY_PATH=/usr/local/lib
export CPATH=/usr/local/include

export CYGWIN="winsymlinks"

alias fsi='/cygdrive/c/Program\ Files\ \(x86\)/Microsoft\ SDKs/F#/4.0/Framework/v4.0/Fsi.exe'
alias fsc='/cygdrive/c/Program\ Files\ \(x86\)/Microsoft\ SDKs/F#/4.0/Framework/v4.0/Fsc.exe'
alias explore="$HOME/unix_setup/src/other/explore.bash"
alias ts="$HOME/unix_setup/src/other/tmux-split.sh"
alias tx="$HOME/unix_setup/src/other/tmux-close.sh"
alias grep='grep --color=always --ignore-case'
alias frep='grep -l --color=never --exclude=\*.{anim,atf,bmp,bnk,csh,dds,exe,fla,jpg,mani,noise,png,psd,sdb,stationData,str,swf,sysmeta,tga,ttf,wem,xls,xmdl}'
alias psd='python3 ~/unix_setup/src/other/populate_search_dir.py'
alias prep="$HOME/unix_setup/src/other/prep.sh"
alias glog='git log --pretty=oneline --abbrev-commit'
alias sizes='du -h --max-depth=1 | sort -hr'
alias msg='~/unix_setup/src/other/notifu /m -'
alias ahk='~/.useful/ahk/ahk.exe'
alias viewpdf="$HOME/useful/sumatra_pdf/SumatraPDF.exe"
alias -g WW=" ; $HOME/unix_setup/src/other/notifu /m - /d 1500 &"

NEWLINE=$'\n'
PROMPT='${NEWLINE}    '
zle_highlight=( default:fg=cyan )
#source ~/unix_setup/src/other/shell_prompt.sh
#
#randomise_prompt_colour () {
#  PS1="%n%B%F{$((RANDOM % 8))}@%m %~ %(!.#.\$) "
#}
#
#autoload -U add-zsh-hook
#
#stty ixany
setopt extendedglob
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=3'

# allow running shell command then enter interactive
if [[ $1 == eval ]]
then
    "$@"
set --
fi
