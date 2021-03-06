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

" Different Arrow Symobols
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

" close vim if only windows is nerdtree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Function to highlight file
function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
  exec 'autocmd filetype nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
   exec 'autocmd filetype nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
endfunction

" Color Code different Files
call NERDTreeHighlightFile('jade', 'green', 'none', 'green', '#151515')
call NERDTreeHighlightFile('ini', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('md', 'blue', 'none', '#3366FF', '#151515')
call NERDTreeHighlightFile('yml', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('config', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('conf', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('json', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('html', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('styl', 'cyan', 'none', 'cyan', '#151515')
call NERDTreeHighlightFile('css', 'cyan', 'none', 'cyan', '#151515')
call NERDTreeHighlightFile('coffee', 'Red', 'none', 'red', '#151515')
call NERDTreeHighlightFile('js', 'Red', 'none', '#ffa500', '#151515')
call NERDTreeHighlightFile('php', 'Magenta', 'none', '#ff00ff', '#151515')
call NERDTreeHighlightFile('go', 'Magenta', 'none', '#ff00ff', '#151515')

" -----------------------------------------------------------------------------
"  Vim-go
"  ------
" Repository:            https://github.com/fatih/vim-go
" Description:           Go language support for Vim 
" -----------------------------------------------------------------------------
"
" Ignore pkg/* directory
set wildignore+=*/pkg/*,*/vendor/*,*/bin/*
let g:go_fmt_command = "goimports"
let g:go_fmt_autosave = 1
let g:go_def_reuse_buffer = 1
let g:go_metalinter_enabled = ['vet', 'golint']
let g:go_echo_command_info=0
let g:go_alternate_mode = "vsplit"
autocmd BufWritePost *.go :GoMetaLinter

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
let g:airline_theme = 'tomorrow'
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
" nerdcommenter
" ------------
" Repository:            https://github.com/scrooloose/nerdcommenter
" Description:           Comment functions 
" -----------------------------------------------------------------------------
"
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1
"
" -----------------------------------------------------------------------------

" indent-guide
" ------------
" Repository:            https://github.com/nathanaelkane/vim-indent-guides
" Description:           Indent Guide for VIM
" -----------------------------------------------------------------------------
"
" Guide Size in Spaces occupied
let g:indent_guides_guide_size = 1
let g:indent_guides_start_level = 1
let g:indent_guides_space_guides = 1
let g:indent_guides_color_change_percent = 95
let g:indent_guides_enable_on_vim_startup = 0
