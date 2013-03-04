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

:set relativenumber 

:set expandtab
:set tabstop=2
:set shiftwidth=2
:set softtabstop=2

:set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]
:set laststatus=2

map -a :call SyntaxAttr()<CR>
