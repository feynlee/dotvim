"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" GUI Settings
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
colorscheme mustang

" set number lines to be on
set nu

" font
" set gfn=Monaco\ for\ Powerline:h14
set gfn=Bitstream\ Vera\ Sans\ Mono:h13

" no menu / toolbar / scrollbars
set guioptions-=r
set guioptions-=l
set guioptions-=m
set guioptions-=T
set guioptions-=L

" Set the status line the way i like it
"set stl=%f\ %m\ %r\ [%{&fo}]\ ine:%l/%L[%p%%]\ Col:%v\ Buf:#%n\ [%b][0x%B]
set shortmess=aoOtT     " Abbreviate the status messages
set showmode            " Show mode I'm in
set showcmd             " Show command I'm typing
set laststatus=2        " Always show status line
set cursorline          " highlight current line
set cursorline          " chighlight current line

" Setting this below makes it so that error messages don't disappear 
" after one second on startup.
set debug=msg

" Make command line two lines high
set ch=2


