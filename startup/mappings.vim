"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Mapping of Keys
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General mappings
" set <C-u> as <C-U> to navigate downwards in Normal Mode
" set <C-i> as <C-D> to navigate downwards in Normal Mode
map! <C-space> <Esc>
map <C-space> <Esc>
nnoremap ; :
nmap <silent> ;; :!
":map \p i(<Esc>ea)<Esc>    "  map \p to add parentheses around a word
":map \c i{<Esc>ea}<Esc>    "  map \c to add curly braces

" Movement mappings
nmap <C-k> <C-U>
nmap <C-j> <C-D>

map j gj
map k gk
map <Up> gk
map <Down> gj

"map $ g$
"map 0 g0
"map ^ g^
map <C-l> g$
map <C-h> g^
" Change the directory to the currently opened file
nmap <silent> ,tc :lcd %:p:h<CR>:!pwd<CR>
" Change the directory to ~/.vim/
nmap <silent> ,tv :cd ~/.vim/<CR>:!pwd<CR>
" Change the directory to ~/.vim/bundle/
nmap <silent> ,tb :cd ~/.vim/bundle/<CR>:!pwd<CR>

" Toggle on and off Spell check
nmap <silent> ,sc :setlocal spell spelllang=en_us<CR>

nmap <silent> ,ev :e ~/.vim/vimrc <CR>
nmap <silent> ,ff gggqG<CR>
nmap <silent> ,sv :so $MYVIMRC<CR>
nmap <Space>  :star<CR> <C-[>
nmap <CR> o<C-[>

nmap <silent> ,j :wincmd j <CR>
nmap <silent> ,k :wincmd k <CR>
nmap <silent> ,l :wincmd l <CR>
nmap <silent> ,h :wincmd h <CR>
nmap <silent> ,c :wincmd c <CR>
nmap <silent> ,o :wincmd o <CR>
"nmap <silent> ,ls :!ls <CR>
nmap <silent> vv <C-h>v<C-l>

nmap <silent> ,et :e ~/.vim/bundle/ultisnips/UltiSnips/tex.snippets<CR>
nmap <silent> ,en :e ~/.vim/bundle/Tex-9/ftplugin/tex_nine.vim<CR>
nmap <silent> ,ms :mksession! ~/Tmp/vimsession/recent.vim<CR>

nmap <silent> ,dv :vert diffsplit 

function! Makesession()
       so ~/Tmp/vimsession/recent.vim
       highlight Cursor guifg=black guibg=Yellow
endfunction

nmap <silent> ,ss :call Makesession() <CR>
nmap <silent> ,ga :!git submodule add
nmap <silent> ,gr :!git rm --cached

" Insert mode mappings
imap <C-l> <Right>
imap <C-h> <Left>
imap <C-j> <Down>
imap <C-k> <Up>
imap <C-u> <C-x>
" inoremap <buffer> <LocalLeader>/ /<Tab>
imap <silent> .<Space> .<CR>



" Command Line mappings
" allow command line editing like emacs
 cnoremap <C-y>      <Home>
 cnoremap <C-e>      <Left>
 cnoremap <C-o>      <End>
 cnoremap <C-f>      <Right>
" cnoremap <C-n>      <End>
 cnoremap <C-p>      <Up>
" cnoremap <C-j>      <S-Left>
" cnoremap <C-k>      <S-Right>
" cnoremap <C-w>      <C-W>
" move in insert mode


"""""
" Abbreviation
""""""""""""""""""
abc
iab ths this
iab wht what
iab <expr> dts strftime("%c")
