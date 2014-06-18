"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Mapping of Keys
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General mappings
" set <C-u> as <C-U> to navigate downwards in Normal Mode
" set <C-i> as <C-D> to navigate downwards in Normal Mode
map! <C-m> <Esc>
map <C-m> <Esc>
imap <C-m> <Esc>
nnoremap ; :
nmap <silent> ;; :!

" Terminal mappings
" Force <C-Space> to map to <Esc> in terminal
inoremap <C-Space> <Esc>
inoremap <C-@> <Esc>
" protecting <Enter> key in insert mode
inoremap <CR> <CR>

" Movement mappings
nmap <C-k> <C-U>
nmap <C-j> <C-D>
map <C-l> g$
map <C-h> g^
map j gj
map k gk
map <Up> gk
map <Down> gj
imap <C-l> <Right>
imap <C-h> <Left>
imap <C-j> <Down>
imap <C-k> <Up>
imap <C-u> <C-x>
cnoremap <C-y>      <Home>
cnoremap <C-e>      <Left>
cnoremap <C-o>      <End>
cnoremap <C-f>      <Right>
cnoremap <C-p>      <Up>
" cnoremap <C-n>      <End>
" cnoremap <C-j>      <S-Left>
" cnoremap <C-k>      <S-Right>
" cnoremap <C-w>      <C-W>
"map $ g$
"map 0 g0
"map ^ g^
" Go to link
nmap <silent> gl <C-]>


" Change the directory to the currently opened file
nmap <silent> ,tc :lcd %:p:h<CR>:!pwd<CR>
" Change the directory to ~/.vim/
nmap <silent> ,tv :cd ~/.vim/<CR>:!pwd<CR>
" Change the directory to ~/.vim/bundle/
nmap <silent> ,tb :cd ~/.vim/bundle/<CR>:!pwd<CR>


" Toggle on and off Spell check
nmap <silent> ,sc :setlocal spell spelllang=en_us<CR>

" Editing mappings
nmap <silent> ,ev :e ~/.vim/vimrc <CR>
nmap <silent> ,eg :e ~/.vim/gvimrc <CR>
nmap <silent> ,ff gggqG<CR>
nmap <silent> ,sv :so $MYVIMRC<CR>
nmap <Space>  :star<CR> <C-[>
nmap <CR> o<C-[>
imap <silent> .<Space> .<CR>
nmap <silent> ,dv :vert diffsplit
nmap <silent> vv <C-h>v<C-l>
" visual reselect of just pasted
nnoremap gp `[v`]

" Window mappings
nmap <silent> ,j :wincmd j <CR>
nmap <silent> ,k :wincmd k <CR>
nmap <silent> ,l :wincmd l <CR>
nmap <silent> ,h :wincmd h <CR>
nmap <silent> ,c :wincmd c <CR>
nmap <silent> ,o :wincmd o <CR>
"nmap <silent> ,ls :!ls <CR>

" Make sessions
nmap <silent> ,ms :mksession! ~/Tmp/vimsession/recent.vim<CR>

function! Makesession()
       so ~/Tmp/vimsession/recent.vim
       highlight Cursor guifg=black guibg=Yellow
endfunction

nmap <silent> ,ss :call Makesession() <CR>
" nmap <silent> ,ga :!git submodule add
" nmap <silent> ,gr :!git rm --cached


"""""
" Abbreviation
""""""""""""""""""
abc
iab ths this
iab wht what
iab <expr> dts strftime("%c")