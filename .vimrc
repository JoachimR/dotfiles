inoremap jj <Esc>
inoremap kk <Esc>
inoremap bb <Esc>


nnoremap VV V$%
nnoremap TT @q

nnoremap <C-d> 8jj
nnoremap <C-u> 8kk

vnoremap <C-d> 8jj
vnoremap <C-u> 8kk

:set ignorecase
:set smartcase

nnoremap n nzz

" go to after the selection after yanking selection
vnoremap y ygv<Esc>

" disable sounds when navigating files via vim
set visualbell
set noerrorbells

set incsearch
set highlightedyank

xnoremap p "_dP
vnoremap p "_dP
