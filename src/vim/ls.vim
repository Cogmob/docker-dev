" Vim syntax file
" Language: lambda javascript
" Maintainer: Cogmob
" Latest Revision: 18 January 2017

if exists("b:current_syntax")
  finish
endif

syn keyword lsTodo containedin=celestiaSCComment contained TODO FIXME XXX NOTE
syn match lsComment "#.*$"

syn match lsFuncCall "\w*\.\n"
syn match lsFuncCall "\w*\. "
syn match lsFuncCall "\w*\ \ \ \ "

syn region lsString oneline start='\'' end='\'' contained
syn region lsDescString oneline start='\'' end='\''
syn match lsDescString "\<\d\+\.\=\d*\>"

syn match lsKey "\w*\:"

syn keyword lsCont cont

syn keyword lsMainKw break do in typeof case else instanceof var catch export new void class extends return while const finally super with continue for switch yield debugger function this default if throw delete import try enum await implements package protected interface private public next cont
syn match lsPunc "[<>\(\)\[\]\{\}+\*/=>\,\.]"

let b:current_syntax = "ls"

hi def link lsMainKw        Keyword
hi def link lsTodo          Todo
hi def link lsComment       vimLineComment
hi def link lsFuncCall      Comment
hi def link lsStarBlockCmd  Statement
hi def link lsMainInnerKw   Special
hi def link lsEllOrbitCmd   Statement
hi def link lsHIPNumber     Type
hi def link lsString        Constant
hi def link lsDescString    PreProc
hi def link lsNumber        Constant
hi lsKey ctermfg=DarkMagenta
