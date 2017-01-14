#!/bin/zsh
grep -Iril --include=\*$1\* $2 --color=never --exclude-dir=\*{.git,node_modules} --exclude=\*.{anim,atf,bmp,bnk,csh,dds,exe,fla,jpg,mani,noise,png,psd,sdb,stationData,str,swf,sysmeta,tga,ttf,wem,xls,xmdl} | python3 ~/unix_setup/src/other/populate_search_dir.py $3 --title $1_$2
