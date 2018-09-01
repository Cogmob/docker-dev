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
alias rcgen='find ~/unix_setup/src/rc-files -type f -name \* -exec ln -f -s "{}" ~ \;'
