"spacing
set tabstop=2      " number of spaces for tab character
set shiftwidth=2   " number of spaces to use for each autoindent
set expandtab      " turn tabs into whitespace
set smarttab       " tab in front of a line inserts blanks according to shiftwidth

"appearance
set number         " always show line numbers
syntax on          " enable syntax highlighting 

"pathogen
call pathogen#infect()
filetype plugin indent on

"fugitive
set laststatus=2
set statusline=%{fugitive#statusline()}

"syntastic
let g:syntastic_enable_signs=1
let g:syntastic_auto_jump=1

"nerdtree
nmap <silent> <c-n> :NERDTreeToggle<CR>
autocmd WinEnter * call s:CloseIfOnlyNerdTreeLeft()
" Close all open buffers on entering a window if the only
" buffer that's left is the NERDTree buffer
function! s:CloseIfOnlyNerdTreeLeft()
  if exists("t:NERDTreeBufName")
    if bufwinnr(t:NERDTreeBufName) != -1
      if winnr("$") == 1
        q   
      endif
    endif
  endif
endfunction
