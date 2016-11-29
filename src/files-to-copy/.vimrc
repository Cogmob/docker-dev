" skip initialization for vim-tiny or vim-small.
if 0 | endif

if has('vim_starting')
    if &compatible
        set nocompatible               " Be iMproved
    endif

    " Required:
    set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#begin(expand('~/.vim/bundle/'))
NeoBundleFetch 'Shougo/neobundle.vim'

NeoBundle 'vim-airline/vim-airline'
NeoBundle 'vim-airline/vim-airline-themes'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'L9'
NeoBundle 'wincent/command-t'
NeoBundle 'benmills/vimux'
NeoBundle 'Chiel92/vim-autoformat'
NeoBundle 'jelera/vim-javascript-syntax', {'autoload':{'filetypes':['javascript']}}
NeoBundle 'isRuslan/vim-es6'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'jistr/vim-nerdtree-tabs'
NeoBundle 'kien/tabman.vim'
NeoBundle 'ctrlpvim/ctrlp.vim'
NeoBundle 'tmhedberg/SimpylFold'
NeoBundle 'vim-scripts/Conque-Shell'
NeoBundle 'sirver/ultisnips'
NeoBundle 'wellle/targets.vim'
NeoBundle 'michaeljsmith/vim-indent-object'
NeoBundle 'tpope/vim-surround'
NeoBundle 'honza/vim-snippets'
NeoBundle 'jeffkreeftmeijer/vim-numbertoggle'
NeoBundle 'edkolev/promptline.vim'
NeoBundle 'edkolev/tmuxline.vim'
NeoBundle 'AndrewRadev/sideways.vim'
NeoBundle 'derekwyatt/vim-fswitch'
NeoBundle 'godlygeek/tabular'
NeoBundle 'xolox/vim-misc'
NeoBundle 'xolox/vim-notes'
NeoBundle 'tpope/vim-obsession'
NeoBundle 'vim-scripts/Txtfmt-The-Vim-Highlighter'
NeoBundle 'tpope/vim-markdown'
NeoBundle 'sidorares/node-vim-debugger'
call neobundle#end()

" global variables
set nobackup
set noswapfile
"set laststatus=2
let g:nerdtree_tabs_open_on_console_startup=0
" let g:fieldtrip_start_map=<leader>,
let g:NERDTreeWinSize = 40
let g:gitgutter_sign_column_always = 1
set ic
set cursorline
set expandtab
set ttimeoutlen=50
set backspace=eol,start,indent
" set whichwrap+=<,>,h,l
set smartcase
set hlsearch
set incsearch
set nowb
let mapleader=" "
let NERDTreeQuitOnOpen = 1
let g:SimpylFold_docstring_preview = 1
set nrformats-=octal
set wildmenu
set wildmode=list:longest
let g:ctrlp_working_path_mode = 0
set shortmess=a
let g:markdown_fenced_languages = ['html', 'python', 'bash=sh', 'javascript']

" Color scheme
"let g:solarized_termcolors=256
filetype plugin indent on    " required
syntax enable
set background=light
colorscheme solarized
set t_Co=256

" don't wrap at the end of lines
set nowrap
" line width and indentation
set softtabstop=4 shiftwidth=4 tabstop=4

" mappings
noremap <C-f> :Autoformat<CR>
nmap <silent> <C-k> :wincmd k<CR>
nmap <silent> <C-j> :wincmd j<CR>
nmap <silent> <C-h> :wincmd h<CR>
nmap <silent> <C-l> :wincmd l<CR>
nmap <silent> <C-i> :res +5<CR>
nmap <silent> <C-u> :res -5<CR>
nmap <leader>p :CtrlP<CR>
nmap <leader>o :CtrlPClearCache<CR>
" nmap <c-x> :call ToggleComments()<cr>
" nmap <C-w> :sp<CR><C-j>:FSAbove<CR>
nmap <leader>f :set ft=txtfmt<CR>

function! ToggleComments()
    if g:commentsvisible
        let g:commentsvisible=0
        hi! Comment guifg=bg ctermfg=white
    else
        let g:commentsvisible=1
        hi! Comment guifg=bg ctermfg=DarkBlue
    endif
endfunction
let commentsvisible=1
hi! Comment guifg=bg ctermfg=DarkBlue

function! g:Leaderp()
  return "Meow String!"
endfunction
nmap <leader>l :echo g:Leaderp()<CR>
"nmap <leader>l :echo g:asdf<CR>
"let g:Myfunc = function("RunL")
"let funca = function("ToggleComments")

nmap <leader>h :noh<CR>
nmap <c-z> :w<CR> :call VimuxRunCommand('clear ; npm test')<CR>
vnoremap <silent> * :call VisualSelection('f')<CR>
vnoremap <silent> # :call VisualSelection('b')<CR>
" map <silent> <leader><cr> :noh<cr>
map <leader>cd :cd %:p:h<cr>:pwd<cr>
map <leader>t <plug>NERDTreeTabsToggle<CR>
nnoremap <SPACE> <Nop>
" let g:tabman_toggle = '<leader>mt'
" let g:tabman_focus  = '<leader>mf'
nmap <leader>q :wa<CR> :so $MYVIMRC<CR>
" map <leader>w :%s/\s\+$//e<CR> :wa<CR> REMOVED FOR WORK
map <leader>, :SidewaysLeft<CR>
map <leader>. :SidewaysRight<CR>
nnoremap <silent> gl "_yiw:s/\(\%#\w\+\)\(\_W\+\)\(\w\+\)/\3\2\1/<CR><c-o>/\w\+\_W\+<CR><c-l>
nnoremap <silent> gh "_yiw?\w\+\_W\+\%#<CR>:s/\(\%#\w\+\)\(\_W\+\)\(\w\+\)/\3\2\1/<CR><c-o><c-l>
nnoremap ,cd :cd %:p:h<CR>:pwd<CR>
nnoremap <C-c> <C-a>
map <leader>r zR

autocmd InsertEnter <buffer> set colorcolumn=82
autocmd InsertLeave <buffer> set colorcolumn=999

map <leader>m `a1jmaa

" Mouse
if has("gui_running")
    "echo "yes, we have a GUI"
    set mouse=a
else
    "echo "Boring old console"
    set mouse=
endif

" Delete trailing white space on save, useful for Python and CoffeeScript ;)
func! DeleteTrailingWS()
    exe "normal mz"
    %s/\s\+$//ge
    exe "normal `z"
endfunc
autocmd BufWrite *.py :call DeleteTrailingWS()
autocmd BufWrite *.coffee :call DeleteTrailingWS()

source ~/unix_setup/src/vim/syntax.vim
source ~/unix_setup/src/vim/vimfolding.vim
source ~/unix_setup/src/vim/cscope_maps.vim

" get rid of annoying temporary files
set undodir=~/.vimundo
set directory=~/.vimundo
" set backupdir=~/.vimundo

if filereadable(".lvimrc")
    source .lvimrc
endif

" folding
set foldmethod=syntax
set foldlevelstart=99

syntax region foldBraces start=/{/ end=/}/ transparent fold keepend extend
setlocal foldlevel=99
let javaScript_fold = 99        " JavaScript
let perl_fold = 99              " Perl
let php_folding = 99             " PHP
let r_syntax_folding = 99        " R
let ruby_fold = 99               " Ruby
let sh_fold_enabled = 99         " sh
let vimsyn_folding = 'af'       " Vim script
let xml_syntax_folding = 99     " XML
au FileType javascript call JavaScriptFold()

" hide comments

" highlighting
hi cursorline ctermbg=NONE
hi folded ctermbg=NONE ctermfg=grey cterm=bold

if has("folding")
    set foldtext=MyFoldText()
    function! MyFoldText()
        " for now, just don't try if version isn't 7 or higher
        if v:version < 701
            return foldtext()
        endif
        " clear fold from fillchars to set it up the way we want later
        let &l:fillchars = substitute(&l:fillchars,',\?fold:.','','gi')
        let l:numwidth = (v:version < 701 ? 8 : &numberwidth)
        if &fdm=='diff'
            let l:linetext=''
            let l:foldtext='---------- '.(v:foldend-v:foldstart+1).' blines the same ----------'
            let l:align = winwidth(0)-&foldcolumn-(&nu ? Max(strlen(line('$'))+1, l:numwidth) : 0)
            let l:align = (l:align / 2) + (strlen(l:foldtext)/2)
            " note trailing space on next line
            setlocal fillchars+=fold:\
        elseif !exists('b:foldpat') || b:foldpat==0
            " let l:foldtext = ' '.(v:foldend-v:foldstart).' blines folded'.v:folddashes.'|'
            let l:foldtext = ''
            let l:endofline = (&textwidth>0 ? &textwidth : 80)
            let l:linetext = strpart(getline(v:foldstart),0,l:endofline-strlen(l:foldtext))
            let l:align = l:endofline-strlen(l:linetext)
            setlocal fillchars+=fold:
        elseif b:foldpat==1
            let l:align = winwidth(0)-&foldcolumn-(&nu ? Max(strlen(line('$'))+1, l:numwidth) : 0)
            let l:foldtext = ' '.v:folddashes
            let l:linetext = substitute(getline(v:foldstart),'\s\+$','','')
            let l:linetext .= ' ---'.(v:foldend-v:foldstart-1).' blines--- '
            let l:linetext .= substitute(getline(v:foldend),'^\s\+','','')
            let l:linetext = strpart(l:linetext,0,l:align-strlen(l:foldtext))
            let l:align -= strlen(l:linetext)
            setlocal fillchars+=fold:-
        endif
        return printf('%s%*s', l:linetext, l:align, l:foldtext)
    endfunction
endif

" disable simple movements
function! DisableIfNonCounted(move) range
    if v:count
        return a:move
    else
        " You can make this do something annoying like:
           " echoerr "Count required!"
           " sleep 2
        return ""
    endif
endfunction

function! SetDisablingOfBasicMotionsIfNonCounted(on)
    let keys_to_disable = get(g:, "keys_to_disable_if_not_preceded_by_count", ["j", "k", "l", "h"])
    if a:on
        for key in keys_to_disable
            execute "noremap <expr> <silent> " . key . " DisableIfNonCounted('" . key . "')"
        endfor
        let g:keys_to_disable_if_not_preceded_by_count = keys_to_disable
        let g:is_non_counted_basic_motions_disabled = 1
    else
        for key in keys_to_disable
            try
                execute "unmap " . key
            catch /E31:/
            endtry
        endfor
        let g:is_non_counted_basic_motions_disabled = 0
    endif
endfunction

function! ToggleDisablingOfBasicMotionsIfNonCounted()
    let is_disabled = get(g:, "is_non_counted_basic_motions_disabled", 0)
    if is_disabled
        call SetDisablingOfBasicMotionsIfNonCounted(0)
    else
        call SetDisablingOfBasicMotionsIfNonCounted(1)
    endif
endfunction

command! ToggleDisablingOfNonCountedBasicMotions :call ToggleDisablingOfBasicMotionsIfNonCounted()
command! DisableNonCountedBasicMotions :call SetDisablingOfBasicMotionsIfNonCounted(1)
command! EnableNonCountedBasicMotions :call SetDisablingOfBasicMotionsIfNonCounted(0)

DisableNonCountedBasicMotions

" large files "
" file is large from 2mb
let g:LargeFile = 1024 * 1024 * 2
augroup LargeFile 
 autocmd BufReadPre * let f=getfsize(expand("<afile>")) | if f > g:LargeFile || f == -2 | call LargeFile() | endif
augroup END
augroup filetypedetect
 au! BufRead,BufNewFile *.es6       set syntax=javascript
augroup END__

function! LargeFile()
 " no syntax highlighting etc
 set eventignore+=FileType
 " save memory when other file is viewed
 setlocal bufhidden=unload
 " is read-only (write with :w new_filename)
 setlocal buftype=nowrite
 " no undo possible
 setlocal undolevels=-1
 " display message
 autocmd VimEnter *  echo "The file is larger than " . (g:LargeFile / 1024 / 1024) . " MB, so some options are changed (see .vimrc for details)."
endfunction

" ultisnips
let g:UltiSnipsExpandTrigger="<C-y>"
let g:UltiSnipsJumpForwardTrigger="<C-b>"
let g:UltiSnipsJumpBackwardTrigger="<C-z>"
let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsListSnippets="<C-l>"
let g:UltiSnipsSnippetDirectories=['UltiSnips', 'UserUltiSnips']

" Highlight ES6 template strings
hi link javaScriptTemplateDelim String
hi link javaScriptTemplateVar Text
hi link javaScriptTemplateString String

" promptline
let g:promptline_preset = {
        \'a' : [ '' ],
        \'x' : [ promptline#slices#cwd() ],
        \'y' : [ promptline#slices#host({ 'only_if_ssh': 1 })],
        \'z' : [ promptline#slices#git_status() ],
        \'warn' : [ promptline#slices#last_exit_code() ]}

map <c-g> :wincmd h<CR>

function! OnFileLoad()
    set foldlevelstart=99
    set foldlevel=99
    nmap <C-n> :only<CR>
    set foldcolumn=12
    if exists("#airline")
        AirlineToggle
    endif
endfunction

autocmd BufReadPre,FileReadPre * call OnFileLoad()
hi StatusLineNC ctermbg=darkgrey ctermfg=white
hi StatusLine ctermbg=white ctermfg=darkgrey cterm=bold
hi LineNr cterm=NONE ctermfg=white ctermbg=white gui=NONE guifg=white guibg=white
hi CurrentLineNr cterm=NONE ctermfg=white ctermbg=white gui=NONE guifg=white guibg=white
hi CurrentLineNr cterm=NONE ctermfg=white ctermbg=white gui=NONE guifg=white guibg=white
hi FoldColumn guibg=white guifg=lightgrey ctermfg=white ctermbg=white
hi NonText guifg=white ctermfg=white
set statusline=\ \ \ \ \ \ \ \ ----

set ls=0
set showtabline
set tabline=\ \ \ \ \ \ \ \ \ \ \ \ \ \ \ %=%f\ \ \ \ \ \ \ \ \ \ \ \ 
"set or change the color of the tabline
hi TabLineFill ctermbg=white ctermfg=grey cterm=bold
set showtabline=2
noh
