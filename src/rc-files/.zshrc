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

alias ga='git add -A'
alias galg='ga ; lg'
alias calg='ga ; cclg'
alias nodejs='node'
alias fsi='/cygdrive/c/Program\ Files\ \(x86\)/Microsoft\ SDKs/F#/4.0/Framework/v4.0/Fsi.exe'
alias fsc='/cygdrive/c/Program\ Files\ \(x86\)/Microsoft\ SDKs/F#/4.0/Framework/v4.0/Fsc.exe'
alias explore="$HOME/unix_setup/src/other/explore.bash"
alias ts="$HOME/unix_setup/src/other/tmux-split.sh"
alias tssh="$HOME/unix_setup/src/other/tmux-split-ssh.sh"
alias tx="$HOME/unix_setup/src/other/tmux-close.sh"
alias compile-sass="$HOME/unix_setup/src/other/compile-sass.sh"
alias grep='grep --color=always --ignore-case'
alias frep='grep -l --color=never --exclude=\*.{anim,atf,bmp,bnk,csh,dds,exe,fla,jpg,mani,noise,png,psd,sdb,stationData,str,swf,sysmeta,tga,ttf,wem,xls,xmdl}'
alias psd='python3 ~/unix_setup/src/other/populate_search_dir.py'
alias prep="$HOME/unix_setup/src/other/prep.sh"
alias irep="$HOME/unix_setup/src/other/irep.sh"
alias glog='git log --pretty=oneline --abbrev-commit'
alias sizes='du -h --max-depth=1 | sort -hr'
alias msg='~/unix_setup/src/other/notifu /m -'
alias ahk='~/.useful/ahk/ahk.exe'
alias viewpdf="$HOME/.useful/sumatra_pdf/SumatraPDF.exe"
alias lc="$HOME/unix_setup/src/other/local_changes.sh"
function ww ()
{
    $HOME/unix_setup/src/other/notifu /m $1 $2 $3 $4 /d 3000 &
}
alias cs="/cygdrive/c/Program\ Files/Mono/bin/csc"
alias nunit='/cygdrive/c/Program\ Files\ (x86)/NUnit.org/nunit-console/nunit3-console.exe'
alias dotnet='/cygdrive/c/Program\ Files/dotnet/dotnet.exe'
alias csc='/cygdrive/c/Windows/Microsoft.NET/Framework64/v3.5/csc.exe'
alias nunit_runner='/home/.useful/net-3.5/nunitlite-runner.exe'
alias sp='shutdown --suspend now'
alias vssh='$HOME/unix_setup/src/vssh/vssh'
alias elm='"/cygdrive/c/Program Files (x86)/Elm Platform/0.18/bin/elm.exe"'
alias elm-repl='"/cygdrive/c/Program Files (x86)/Elm Platform/0.18/bin/elm-repl.exe"'
alias elm-package='"/cygdrive/c/Program Files (x86)/Elm Platform/0.18/bin/elm-package.exe"'
alias elm-make='"/cygdrive/c/Program Files (x86)/Elm Platform/0.18/bin/elm-make.exe"'
alias elm-reactor='"/cygdrive/c/Program Files (x86)/Elm Platform/0.18/bin/elm-reactor.exe"'
alias tm='tmux new-session ~/unix_setup/src/other/tmux-split-b.sh'
alias ti='tmux select-window -t'
alias tw='tmux select-pane -t 2'
alias te='tmux select-pane -t 3'
alias to='tmux select-pane -t 7'

PROMPT="

        - "
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
