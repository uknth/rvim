
" Pathogen
source ~/.rvim/vimrc/_pathogen.vimrc.vim

" Config
source ~/.rvim/vimrc/_conf.vimrc.vim

" Plugin Config
source ~/.rvim/vimrc/_plugin.vimrc.vim

" Override
try 
	source .custom.vimrc.vim
catch
endtry
