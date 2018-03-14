" General Settings 
" ---------------------------------------------------------------------------


" Syntax 
syntax on

" History Length
set history=1500

" Filetype Plugin
filetype plugin on
filetype indent on

" Autoread file when it changes outside
set autoread

" Remap Leader
let mapleader = ","
let g:mapleader = ","


" Increase updatetime for faster update, as opposed to default
" of 4 secs
"
set updatetime=250

set cc=80,120


" Vim User Interface 
" ---------------------------------------------------------------------------

" Lines to the cursor when moving vertically
set so=5

" Language
let $LANG='en' 
set langmenu=en

" Turn on the WiLd menu
set wildmenu

" Ingore some compiled/vc files
set wildignore=*.o,*~,*.pyc
if has("win16") || has("win32")
    " For windows
    set wildignore+=.git\*,.hg\*,.svn\* 
else
    " For mac/linux
    set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.DS_Store
endif


" Show ruler
set ruler

" Command bar height set to a +ve number
" set cmdheight=1 


" A buffer becomes hidden when it is abandoned
set hid 

" Configure backspace so it acts as it should act 
set backspace=eol,start,indent 
set whichwrap+=<,>,h,l

" Be smart about cases
set ignorecase
set smartcase

" Incremental Search
set incsearch

" Show matching brackets
set showmatch
set mat=2

" No sounds or visual alerts on errors
set noerrorbells visualbell t_vb=
if has('autocmd')
  autocmd GUIEnter * set visualbell t_vb=
endif

" Slight margin on left
set foldcolumn=0


" Colors and Fonts
" ---------------------------------------------------------------------------

" Enable syntax
syntax enable 

" Try a default colorscheme
try
    colorscheme desert
catch
endtry

" Set background, default is dark
set background=dark

" Encoding
set encoding=utf8


" Files, Backups & Undo
" ---------------------------------------------------------------------------

" Use Unix as the standard file type
set ffs=unix,dos,mac

" Turn backup off
set nobackup
set nowb
set noswapfile


" Text, Tab & Indents
" ---------------------------------------------------------------------------

" Use spaces instead of tabs
set expandtab

" Smart tabs
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4


" Linebreak on 500 characters
set lbr
set tw=500



" Auto Indent
set ai
" Smart Indent
set si
" Wrap Lines
set wrap

" ---------------------------------------------------------------------------


" tabs, windows and buffers
" ---------------------------------------------------------------------------

" Let 'tl' toggle between this and the last accessed tab
let g:lasttab = 1
nmap <Leader>tl :exe "tabn ".g:lasttab<CR>
au TabLeave * let g:lasttab = tabpagenr()

" Opens a new tab with the current buffer's path
map <leader>te :tabedit <c-r>=expand("%:p:h")<cr>/

" behavior when switching between buffers 
try
  set switchbuf=useopen,usetab,newtab
  set stal=2
catch
endtry


" Return to last edit position when opening files 
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif


" Status Line
" ---------------------------------------------------------------------------

" Show status line
set laststatus=2


" Status Line Format
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l\ \ Column:\ %c


" Content
" ---------------------------------------------------------------------------

" Delete trailing white space on save
func! DeleteTrailingWS()
  exe "normal mz"
  %s/\s\+$//ge
  exe "normal `z"
endfunc

autocmd BufWrite *.py :call DeleteTrailingWS()
autocmd BufWrite *.coffee :call DeleteTrailingWS()


" Util Functions
" ---------------------------------------------------------------------------
"
" HasPaste() to show if paste mode is enabled or not
" Returns true if paste mode is enabled
function! HasPaste()
    if &paste
        return 'PASTE MODE  '
    endif
    return ''
endfunction


" Turn persistent undo on 
" means that you can undo even when you close a buffer/VIM
" ---------------------------------------------------------------------------
try
    set undodir=~/.rvim/temp/undodir
    set undofile
catch
endtry


" Fast editing and reloading of vimrc configs
" ---------------------------------------------------------------------------
map <leader>e :e! ~/.rvim/vimrc.vim<cr>
autocmd! bufwritepost vimrc source ~/.rvim/vimrc.vim

" Some abbreviations
" ---------------------------------------------------------------------------
iab xdate <c-r>=strftime("%d/%m/%y %H:%M:%S")<cr>

" Colorscheme
" ---------------------------------------------------------------------------
"
" colorscheme Tomorrow-Night
