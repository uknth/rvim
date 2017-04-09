" General 
" ---------------------------------------------------------------------------
"
" Fast saving
" -----------------------------------------
nmap <leader>w :w!<cr>

" :W sudo saves the file 
" (useful for handling the permission-denied error)
" -----------------------------------------
command W w !sudo tee % > /dev/null

" Spellcheck
" -----------------------------------------
map <leader>ss :setlocal spell!<cr>



" Movement & Window management
" ---------------------------------------------------------------------------
" split
" -----------------------------------------
" split vertically
map <F9> :vsplit<cr>
" split Horizontally
map <F10> :split<cr>
" -----------------------------------------


" Move between windows
" -----------------------------------------
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Move between tabs
" -----------------------------------------
nmap <F5> :tabprevious <CR>   " Previous Tab
nmap <F6> :tabnext <CR>       " Next Tab

" Close the current buffer - Buffer Delete
" -----------------------------------------
map <leader>bd :Bclose<cr>:tabclose<cr>gT

" Close all buffers
" -----------------------------------------
map <leader>ba :bufdo bd<cr>

" Move to Next/Previous buffers
" -----------------------------------------
map <leader>l :bnext<cr>         "Next Buffer
map <leader>h :bprevious<cr>     "Previous Buffer



" Mapping for managing tabs
" -----------------------------------------
map <leader>tc :tabnew<cr>       "Create new Tab
map <leader>td :tabclose<cr>     "Delete new Tab
map <leader>tn :tabnext<cr>      "Go to next tab
map <leader>tp :tabprevious<cr>  "Go to previous tab 
map <leader>tm :tabmove          "Move tab


" Remap VIM 0 to first non-blank character
" -----------------------------------------
map 0 ^

" Move a line of text using ALT+[jk] or Command+[jk] on mac
" -----------------------------------------
nmap <M-j> mz:m+<cr>`z
nmap <M-k> mz:m-2<cr>`z
vmap <M-j> :m'>+<cr>`<my`>mzgv`yo`z
vmap <M-k> :m'<-2<cr>`>my`<mzgv`yo`z

if has("mac") || has("macunix")
  nmap <D-j> <M-j>
  nmap <D-k> <M-k>
  vmap <D-j> <M-j>
  vmap <D-k> <M-k>
endif



" Utility
" ---------------------------------------------------------------------------

" Opens a simple text scratch pad for you to edit
map <leader>q :e ~/buffer<cr>

" Opens a simple markdown pad to edit
map <leader>x :e ~/buffer.md<cr>

" Enables/Disables paste mode
map <leader>pp :setlocal paste!<cr>
nnoremap <F7> :set invpaste paste?<CR>
set pastetoggle=<F7>




" Plugins
" ---------------------------------------------------------------------------

" mru.vim
" -----------------------------------------
" leader+f will open most recently block
map <leader>f :MRU<CR>

" ctrl+p
" -----------------------------------------
" ctrl+f will open the list of all files
let g:ctrlp_map = '<c-f>'
" leader->j will open the list of all files
map <leader>j :CtrlP<cr>
" ctrl+b will open buffer explorer
map <c-b> :CtrlPBuffer<cr>

" nerdtree
" -----------------------------------------
map <leader>nn :NERDTreeToggle<cr>
map <leader>nb :NERDTreeFromBookmark
map <leader>nf :NERDTreeFind<cr>

" goyo - vimroom
" -----------------------------------------
nnoremap <silent> <leader> <leader> z :Goyo<cr>

" vim-gitgutter
" -----------------------------------------
nnoremap <silent> <leader>d :GitGutterToggle<cr>

" tagbar
" -----------------------------------------
nmap <F3> :TagbarToggle<CR>

" vim-go
" -----------------------------------------
nmap <F2> :GoDef <CR>
