"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Gundo - Visualizing the Undo Tree
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap ,gt :GundoToggle<CR>

" set undo history directory
set undodir=~/.vim/tmp/undo//
" persist (g)undo tree between sessions
" set undofile
set history=500
set undolevels=500
