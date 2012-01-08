"spacing
set tabstop=2
set shiftwidth=2
set expandtab
set smarttab

"appearance
set number
syntax on

"pathogen
call pathogen#infect()
filetype plugin indent on

"fugitive
set laststatus=2
set statusline=%{fugitive#statusline()}

"syntastic
let g:syntastic_enable_signs=1
let g:syntastic_auto_jump=1
