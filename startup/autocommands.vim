"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Autocommand
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" automatically make sessions when logout
autocmd VimLeave * mksession! ~/Tmp/vimsession/recent.vim
" What does this do??
au! BufRead,BufNewFile *.f90 let b:fortran_do_enddo=1

" " Save Foldings and Auto-load Foldings
set viewoptions=folds
au BufWinLeave * silent! mkview
au BufWinEnter * silent! loadview

" auto change the directory to ~/.vim when editing .vimrc
au BufEnter * silent! cd %:p:h

" Cursor Color
autocmd ColorScheme * highlight Cursor guifg=black guibg=Yellow
" Automatically save when losing focus
au FocusLost * :wa

" Change to the current directory automatically when entering buffer
" au BufWinEnter * lcd %:p:h

au BufEnter ~/.vim/vimrc inoremap <buffer> ,so source ~/.vim/startup/
au BufEnter ~/.vim/vimrc nnoremap <buffer> ,e  :e ~/.vim/startup/
