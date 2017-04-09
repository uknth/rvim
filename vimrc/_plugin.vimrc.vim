" -----------------------------------------------------------------------------
" ACK.VIM
" -------
"
"  Use Ack/Ag to search for file
" 
" Results Keyboard Shortcuts
" --------------------------
" ?    a quick summary of these keys, repeat to close
" o    to open (same as Enter)
" O    to open and close the quickfix window
" go   to preview file, keeping focus on the results
" t    to open in new tab
" T    to open in new tab, keeping focus on the results
" h    to open in horizontal split
" H    to open in horizontal split, keeping focus on the results
" v    to open in vertical split
" gv   to open in vertical split, keeping focus on the results
" q    to close the quickfix window
"
" Key Binding
" ----------

map <leader>g :Ack

" -----------------------------------------------------------------------------
" Syntastic
" ---------
"
" Syntactical validation of file
" -----------------------------

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" -----------------------------------------------------------------------------
"  ctrlp.vim
"  ---------
"
"  Full path fuzzy file, buffer, mru, tag, ... finder for Vim.

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" Use Custom ignores as well. It will use wildignore, but just adding custom
" ignore for future reference

let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }


" -----------------------------------------------------------------------------
" Nerdtree
" --------
"
" Basic Settings
"  
"
" Position
let g:NERDTreeWinPos = "left"                     
" Size
let g:NERDTreeWinSize=25
" -----------------------------------------------------------------------------
"
"
"  Vim-go
"  ------
"
" Ignore pkg/* directory
set wildignore+=*/pkg/*,*/vendor/*


" -----------------------------------------------------------------------------
"  Youcompleteme
"  -------------
"
"  Disable Preview Window
"
set completeopt-=preview
let g:ycm_add_preview_to_completeopt = 0

" -----------------------------------------------------------------------------
"
"  Airline
"  -------
"
" Airline
let g:airline_theme = 'base16_twilight'
let g:airline_powerline_fonts = 1
let g:airline_extensions = [ 'ctrlp', 'bufferline', 'tabline', 'tagbar', 'unite', 'vimagit' ]
" -----------------------------------------------------------------------------
"
"
