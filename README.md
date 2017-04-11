## RVIM

Collection of plugins and customization on vimrc

## Intallation

Clone the repository recursively in your home directory. 
```
   git clone  --recursive git@github.com:uknth/rvim.git
```
> Note: Changing the name of the directory or cloning it elsewhere is not supported.

Compile binaries of `YouCompleteMe`

- Go to folder `~/.rvim/plug/YouCompleteMe` 
- Run Command `./install.py --gocode-completer` for go autocomplete

Add following in your `~/.vimrc`

```
set runtimepath+=~/.rvim

source ~/.rvim/vimrc.vim
```

## Customization

- To customize the configuration create file `~/.rvim/custom.vimrc.vim`
- Add configuration to the file



## Keymap

Standard Keymap, can be customized by adding more in `~/.rvim/custom.vimrc.vim`

```
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
"
"  ack.vim
" -----------------------------------------
 nnoremap <Leader>a :Ack!<Space>


" mru.vim
" -----------------------------------------
" leader+f will open most recently block
map <leader>f :MRU<CR>


" ctrl+p
" -----------------------------------------
"
" ctrl+f will open the list of all files
" leader->j will open the list of all files
let g:ctrlp_map = '<c-p>'
map <leader>p :CtrlP<cr>

" ctrl+b will open buffer explorer
map <leader>b :CtrlPBuffer<cr>
map <c-b> :CtrlPBuffer<cr>

" leader->r  opens MRU
map <leader>r :CtrlPMRU<cr>


" nerdtree
" -----------------------------------------
" Toggle Tree on ctrl + n
map <C-n> :NERDTreeToggle<CR>
" Toggle Tree on <leader>->nn 
map <leader>nn :NERDTreeToggle<cr>
" Use bookmark
map <leader>nb :NERDTreeFromBookmark
" Use find to get tree
map <leader>nf :NERDTreeFind<cr>

" goyo - vimroom
" -----------------------------------------
nnoremap <silent> <leader>z :Goyo<cr>

" vim-gitgutter
" -----------------------------------------
nnoremap <silent> <leader>d :GitGutterToggle<cr>

" tagbar
" -----------------------------------------
nmap <F8> :TagbarToggle<CR>

" vim-go
" -----------------------------------------
" Some Info for reference & Key Binding
" Build with :GoBuild, install with :GoInstall or test with :GoTest (run single tests via :GoTestFunc)
" Show test coverage with :GoCoverage or in browser with :GoCoverageBrowser
" Goto definition with :GoDef
" Quick jump to declarations with :GoDecls or :GoDeclsDir
" Show documentation with :GoDoc inside or in browser with :GoDocBrowser
" Quickly execute your current file/files with :GoRun
" Advanced source analysis tools utilizing guru, such as :GoImplements, :GoCallees, and :GoReferrers
" Change or display GOPATH with :GoPath
" Multiple 3rd linter support with :GoMetaLinter
" Renaming identifiers with :GoRename
" Share your code to play.golang.org with :GoPlay
" Switch between *.go and *_test.go code with :GoAlternate
" Add/Remove tags on struct fields with :GoAddTags
" Add import paths via :GoImport or remove them with :GoDrop
" 
"
nmap <F2> :GoDef <CR>
nmap <F3> :GoDoc <CR>


" nerdcommenter
" -----------------------------------------
"
"  Default Key Mapping
"
"  <leader>cc |NERDComComment|                          :Comment out the current line or text selected in visual mode.
"  <leader>cn |NERDComNestedComment|                    :Same as cc but forces nesting.
"  <leader>c<space> |NERDComToggleComment|              :Toggles the comment state of the selected line(s). 
"  <leader>cm |NERDComMinimalComment|                   :Comments the given lines using only one set of multipart delimiters.
"  <leader>ci |NERDComInvertComment|                    :Toggles the comment state of the selected line(s) individually.
"  <leader>cs |NERDComSexyComment|                      :Comments out the selected lines with a pretty block formatted layout.
"  <leader>cy |NERDComYankComment|                      :Same as cc except that the commented line(s) are yanked first.
"  <leader>c$ |NERDComEOLComment|                       :Comments the current line from the cursor to the end of line.
"  <leader>cA |NERDComAppendComment|                    :Adds comment delimiters to the end of line and goes into insert mode between them.
"  |NERDComInsertComment|                               :Adds comment delimiters at the current cursor position and inserts between. Disabled by default.
"  <leader>ca |NERDComAltDelim|                         :Switches to the alternative set of delimiters.
"  <leader>cu |NERDComUncommentLine|                    :Uncomments the selected line(s).
"


" vim-easymotion 
" -----------------------------------------
"
" Default keyBinding
" <leader><leader>w                                     :trigger the word motion
"
"
" vim-indentguide
" -----------------------------------------
" Default Keymapping
"
"
" Enable 
" :nmap <silent> <Leader>ie <Plug>IndentGuidesEnable
" Disable
" :nmap <silent> <Leader>id <Plug>IndentGuidesDisable
" Toggle 
" :nmap <silent> <Leader>ig <Plug>IndentGuidesToggle
"
"
```
