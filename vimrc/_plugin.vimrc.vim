" -----------------------------------------------------------------------------
" ACK.VIM
" -------
" Repository:            https://github.com/mileszs/ack.vim
" Description:           Run your favorite search tool from Vim
" -----------------------------------------------------------------------------
"
" Use Ack/Ag to search for file
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
" Repository:            https://github.com/vim-syntastic/syntastic
" Description:           Syntastic is a syntax checking plugin for Vim
" -----------------------------------------------------------------------------
"
" Syntactical validation of file
" -----------------------------

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1

" Python
let g:syntastic_python_checkers=['pyflakes']

" Javascript
let g:syntastic_javascript_checkers = ['jshint']

" Go
let g:syntastic_auto_loc_list = 1
let g:syntastic_go_checkers = ['go', 'golint', 'errcheck']

" -----------------------------------------------------------------------------
"  ctrlp.vim
"  ---------
" Repository:            https://github.com/ctrlpvim/ctrlp.vim
" Description:           Full path fuzzy file, buffer, mru, tag, ... finder 
" -----------------------------------------------------------------------------
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
" Repository:            https://github.com/scrooloose/nerdtree
" Description:           The NERD tree allows you to explore your filesystem 
"                        and to open files and directories 
" -----------------------------------------------------------------------------
"
" Basic Settings
"  
"
" Position
let g:NERDTreeWinPos = "left"                     
" Size
let g:NERDTreeWinSize=25

" -----------------------------------------------------------------------------
"  Vim-go
"  ------
" Repository:            https://github.com/fatih/vim-go
" Description:           Go language support for Vim 
" -----------------------------------------------------------------------------
"
" Ignore pkg/* directory
set wildignore+=*/pkg/*,*/vendor/*
let g:go_fmt_command = "goimports"


" -----------------------------------------------------------------------------
" Youcompleteme
" -------------
" Repository:            https://github.com/Valloric/YouCompleteMe
" Description:           YouCompleteMe is a fast, as-you-type, fuzzy-search 
"                        code completion engine for Vim
" -----------------------------------------------------------------------------
"
"  Disable Preview Window
"
set completeopt-=preview
let g:ycm_add_preview_to_completeopt = 0

" -----------------------------------------------------------------------------
" Airline
" -------
" Repository:            https://github.com/vim-airline/vim-airline 
"                        https://github.com/vim-airline/vim-airline-themes
" Description:           Lean & mean status/tabline for vim that's light as air.
" -----------------------------------------------------------------------------
"
let g:airline_theme = 'base16_twilight'
let g:airline_powerline_fonts = 1
let g:airline_extensions = [ 'ctrlp', 'bufferline', 'tabline', 'tagbar' ]

" -----------------------------------------------------------------------------
" Vimroom
" -------
" Repository:            https://github.com/junegunn/goyo.vim
" Description:           Distraction-free writing in Vim.
" -----------------------------------------------------------------------------
"
let g:goyo_width=100
let g:goyo_margin_top = 2
let g:goyo_margin_bottom = 2

" -----------------------------------------------------------------------------
" Vim-Markdown
" ------------
" Repository:            https://github.com/plasticboy/vim-markdown
" Description:           Syntax highlighting, matching rules and mappings for MD
" -----------------------------------------------------------------------------
"
let g:vim_markdown_folding_disabled = 1


" -----------------------------------------------------------------------------
" mru.vim
" ------------
" Repository:            https://github.com/yegappan/mru
" Description:           Most Recently Used (MRU) plugin
" -----------------------------------------------------------------------------
"
let MRU_File = $HOME.'/.rvim/temp/_vim_mru_file'

" -----------------------------------------------------------------------------
" vim-multiple-cursor
" ------------
" Repository:            https://github.com/terryma/vim-multiple-cursors
" Description:           multi selection for vim 
" -----------------------------------------------------------------------------
"
" User custom keybinding
let g:multi_cursor_use_default_mapping=0


" -----------------------------------------------------------------------------
" vim-gitgutter
" ------------
" Repository:            https://github.com/airblade/vim-gitgutter
" Description:           Git-Gutter plugin for vim
" -----------------------------------------------------------------------------
"
" keeping changes less to keep vim snappy
let g:gitgutter_max_signs = 150
" -----------------------------------------------------------------------------


