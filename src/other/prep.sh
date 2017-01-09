#!/bin/zsh
grep -ril --include=\*$1\* $2 --color=never --exclude=\*.{anim,atf,bmp,bnk,csh,dds,exe,fla,jpg,mani,noise,png,psd,sdb,stationData,str,swf,sysmeta,tga,ttf,wem,xls,xmdl} | python3 ~/unix_setup/src/other/populate_search_dir.py $3
