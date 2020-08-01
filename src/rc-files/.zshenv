function tssh() {
    if [ $1 = "xp" ] ; then
        tmux new-window -nssh "ssh luke_avery@xp.ccbar.co.uk"
    fi
    if [ $1 = "xpbackup" ] ; then
        tmux new-window -nssh "ssh luke_avery_cambridgeconsultants_@xpbackup.ccbar.co.uk"
    fi
    if [ $1 = "sheen" ] ; then
        tmux new-window -nssh "ssh luke_avery_cambridgeconsultants_@sheen.ccbar.co.uk"
    fi
}

function thelp() {
	echo thelp print usage for tmux utilities
	echo
	echo tm create new tmux instance
	echo
	echo th move left
	echo tj move down
	echo tk move up
	echo tl move right
	echo
	echo tw move to top left pane
	echo te move to bottom left pane
	echo to move to right pane
	echo
	echo tu resize down
	echo ti resize up
	echo
	echo tc add pane above
	echo tv add pane below
	echo
	echo ts create section
	echo tssh create section as ssh session
	echo tg go to section
	echo tx close section
}

alias th='tmux select-pane -L'
alias tj='tmux select-pane -D'
alias tk='tmux select-pane -U'
alias tl='tmux select-pane -R'
alias tw='tmux select-pane -t 2'
alias te='tmux select-pane -t 3'
alias to='tmux select-pane -t 7'
alias tu='tmux resize-pane -D 5'
alias ti='tmux resize-pane -U 5'
alias tc='tmux split-window -b'
alias tv='tmux split-window'
alias ts="$HOME/docker-dev/src/other/tmux-split.sh"
function tx() {
    $HOME/docker-dev/src/other/tmux-close.sh
}
function tm() {
    tmux new-session ~/docker-dev/src/other/tmux-split-b.sh . $1
}
alias tw='tmux select-pane -t 2'
alias te='tmux select-pane -t 3'
alias to='tmux select-pane -t 7'
function tg() {
    if [ -n "$1" ] ; then
        tmux select-window -t $1
    fi
    $HOME/docker-dev/src/other/tmux-refresh.sh
}

alias ga='git add -A'
alias galg='ga ; lg'
alias calg='ga ; cclg'
alias nodejs='node'
alias fsi='/cygdrive/c/Program\ Files\ \(x86\)/Microsoft\ SDKs/F#/4.0/Framework/v4.0/Fsi.exe'
alias fsc='/cygdrive/c/Program\ Files\ \(x86\)/Microsoft\ SDKs/F#/4.0/Framework/v4.0/Fsc.exe'
alias explore="$HOME/docker-dev/src/other/explore.bash"
alias explore='explorer.exe \`wslpath -w "$PWD"\`'

alias compile-sass="$HOME/docker-dev/src/other/compile-sass.sh"
alias grep='grep --color=always --ignore-case'
alias frep='grep -l --color=never --exclude=\*.{anim,atf,bmp,bnk,csh,dds,exe,fla,jpg,mani,noise,png,psd,sdb,stationData,str,swf,sysmeta,tga,ttf,wem,xls,xmdl}'
alias psd='python3 ~/docker-dev/src/other/populate_search_dir.py'
alias prep="$HOME/docker-dev/src/other/prep.sh"
alias irep="$HOME/docker-dev/src/other/irep.sh"
alias glog='git log --pretty=oneline --abbrev-commit'
alias sizes='du -h --max-depth=1 | sort -hr'
alias msg='~/docker-dev/src/other/notifu /m -'
alias ahk='~/.useful/ahk/ahk.exe'
alias viewpdf="$HOME/.useful/sumatra_pdf/SumatraPDF.exe"
alias lc="$HOME/docker-dev/src/other/local_changes.sh"
function ww ()
{
    $HOME/docker-dev/src/other/notifu /m $1 $2 $3 $4 /d 3000 &
}
alias cs="/cygdrive/c/Program\ Files/Mono/bin/csc"
alias nunit='/cygdrive/c/Program\ Files\ (x86)/NUnit.org/nunit-console/nunit3-console.exe'
alias csc='/cygdrive/c/Windows/Microsoft.NET/Framework64/v3.5/csc.exe'
alias nunit_runner='/home/.useful/net-3.5/nunitlite-runner.exe'
alias sp='shutdown --suspend now'
alias vssh='$HOME/docker-dev/src/vssh/vssh'
alias elm='"/cygdrive/c/Program Files (x86)/Elm Platform/0.18/bin/elm.exe"'
alias elm-repl='"/cygdrive/c/Program Files (x86)/Elm Platform/0.18/bin/elm-repl.exe"'
alias elm-package='"/cygdrive/c/Program Files (x86)/Elm Platform/0.18/bin/elm-package.exe"'
alias elm-make='"/cygdrive/c/Program Files (x86)/Elm Platform/0.18/bin/elm-make.exe"'
alias elm-reactor='"/cygdrive/c/Program Files (x86)/Elm Platform/0.18/bin/elm-reactor.exe"'
alias rcgen='find ~/docker-dev/src/rc-files -type f -name \* -exec ln -f -s "{}" ~ \;'
alias chrome='/c/Program\ Files\ \(x86\)/Google/Chrome/Application/chrome --disable-web-security'
