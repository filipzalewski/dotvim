" Needed on some linux distros
" see http://www.adamlowe.me/2009/12/vim-destroys...
"
filetype off
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

syntax on
:colorscheme default
set background=light

:filetype plugin on

:set expandtab
:set tabstop=2
:set shiftwidth=2
:set softtabstop=2
