" pathogen configuration
set nocompatible
syntax on
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()
filetype plugin indent on

colorscheme monokai_modified 
:set gfn=Monaco
autocmd VimEnter * NERDTree
let g:NERDTreeChDirMode=2

:set relativenumber 

:set expandtab
:set tabstop=2
:set shiftwidth=2
:set softtabstop=2

:imap jj <Esc>
map -a :call SyntaxAttr()<CR>
