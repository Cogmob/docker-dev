" set up for neobundle
" Note: Skip initialization for vim-tiny or vim-small.
if 0 | endif

if has('vim_starting')
    if &compatible
        set nocompatible               " Be iMproved
    endif

    " Required:
    set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

" Plugins
call neobundle#begin(expand('~/.vim/bundle/'))
NeoBundleFetch 'Shougo/neobundle.vim'

NeoBundle 'tpope/vim-fugitive'
NeoBundle 'L9'
NeoBundle 'wincent/command-t'
NeoBundle 'benmills/vimux'
NeoBundle 'Chiel92/vim-autoformat'
NeoBundleLazy 'jelera/vim-javascript-syntax', {'autoload':{'filetypes':['javascript']}}
NeoBundle 'vim-airline/vim-airline'
NeoBundle 'vim-airline/vim-airline-themes'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'jistr/vim-nerdtree-tabs'
NeoBundle 'kien/tabman.vim'
NeoBundle 'ctrlpvim/ctrlp.vim'
NeoBundle 'tmhedberg/SimpylFold'
NeoBundle 'mhinz/vim-signify'
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
NeoBundle 'plasticboy/vim-markdown'
call neobundle#end()

" global variables
set nobackup
set laststatus=2
let g:nerdtree_tabs_open_on_console_startup=0
" let g:fieldtrip_start_map=<leader>,
let g:NERDTreeWinSize = 40
let g:gitgutter_sign_column_always = 1
set ic
set cursorline
set expandtab! " REMOVED FOR WORK
set ttimeoutlen=50
set backspace=eol,start,indent
" set whichwrap+=<,>,h,l
set smartcase
set hlsearch
set incsearch
set nobackup
set nowb
set noswapfile
let mapleader=" "
let NERDTreeQuitOnOpen = 1
let g:SimpylFold_docstring_preview = 1
set relativenumber
autocmd InsertEnter * :set number
autocmd InsertLeave * :set relativenumber
set nrformats-=octal
set wildmenu
set wildmode=list:longest
let g:ctrlp_working_path_mode = 0
set shortmess=a
set nobackup
set noswapfile

" Color scheme
"let g:solarized_termcolors=256
filetype plugin indent on    " required
syntax enable
set background=light
colorscheme solarized
set t_Co=256
set laststatus=2

" don't wrap at the end of lines
set nowrap
" line width and indentation
set textwidth=80 softtabstop=4 shiftwidth=4 tabstop=4

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
nmap <c-x> :call ToggleComments()<cr>
nmap <C-w> :sp<CR><C-j>:FSAbove<CR>
nmap <C-n> :only<CR>

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
set colorcolumn=82

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

" Vimux
" let g:VimuxUseNearestPane = 1
map <silent> <LocalLeader>rl :wa<CR> :VimuxRunLastCommand<CR>
map <silent> <LocalLeader>vi :wa<CR> :VimuxInspectRunner<CR>
map <silent> <LocalLeader>vk :wa<CR> :VimuxInterruptRunner<CR>
map <silent> <LocalLeader>vx :wa<CR> :VimuxClosePanes<CR>
map <silent> <LocalLeader>vp :VimuxPromptCommand<CR>
vmap <silent> <LocalLeader>vs "vy :call VimuxRunCommand(@v)<CR>
nmap <silent> <LocalLeader>vs vip<LocalLeader>vs<CR>

source ~/unix_setup/src/vim/syntax.vim
source ~/unix_setup/src/vim/vimfolding.vim
source ~/unix_setup/src/vim/cscope_maps.vim

if filereadable(".lvimrc")
    source .lvimrc
else
    echo 'lvimrc file not found'
endif

" nnoremap <leader>fa :call CscopeFindInteractive(expand('<cword>'))<CR>
" nnoremap <leader>l :call ToggleLocationList()<CR>
" " s: Find this C symbol
" nnoremap  <leader>fs :call CscopeFind('s', expand('<cword>'))<CR>
" " g: Find this definition
" nnoremap  <leader>fg :call CscopeFind('g', expand('<cword>'))<CR>
" " d: Find functions called by this function
" nnoremap  <leader>fd :call CscopeFind('d', expand('<cword>'))<CR>
" " c: Find functions calling this function
" nnoremap  <leader>fc :call CscopeFind('c', expand('<cword>'))<CR>
" " t: Find this text string
" nnoremap  <leader>ft :call CscopeFind('t', expand('<cword>'))<CR>
" " e: Find this egrep pattern
" nnoremap  <leader>fe :call CscopeFind('e', expand('<cword>'))<CR>
" " f: Find this file
" nnoremap  <leader>ff :call CscopeFind('f', expand('<cword>'))<CR>
" " i: Find files #including this file
" nnoremap  <leader>fi :call CscopeFind('i', expand('<cword>'))<CR>


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

" call feedkeys("zM")

function! AirlineInit()
    call airline#parts#define_function('cwd', 'getcwd')
    let g:airline_section_a = airline#section#create_left([])
    let g:airline_section_b = airline#section#create(['%f'])
    let g:airline_section_c = airline#section#create([])

    let g:airline_section_x = airline#section#create([])
    let g:airline_section_y = airline#section#create_right(['branch','%l','%c'])
    let g:airline_section_z = airline#section#create_right(['mode'])

    "let g:airline_section_b = airline#section#create_left(['ffenc','hunks','%f'])
    "let g:airline_section_x = airline#section#create(['%P'])
    "let g:airline_section_x = airline#section#create(['branch'])
    "let g:airline_section_y = airline#section#create(['%B'])
endfunction
autocmd VimEnter * call AirlineInit()
let g:airline_powerline_fonts = 1

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

" ultisnips
let g:UltiSnipsExpandTrigger="<C-y>"
let g:UltiSnipsJumpForwardTrigger="<C-b>"
let g:UltiSnipsJumpBackwardTrigger="<C-z>"
let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsListSnippets="<C-l>"
let g:UltiSnipsSnippetDirectories=['UltiSnips', 'UserUltiSnips']

" promptline
let g:promptline_preset = {
        \'a' : [ '' ],
        \'x' : [ promptline#slices#cwd() ],
        \'y' : [ promptline#slices#host({ 'only_if_ssh': 1 })],
        \'z' : [ promptline#slices#git_status() ],
        \'warn' : [ promptline#slices#last_exit_code() ]}

map <c-g> :wincmd h<CR>
nmap <C-n> :only<CR>
