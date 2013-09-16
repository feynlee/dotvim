"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" CtrlP
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:ctrlp_map = '<D-f>' "Set the mapping to invoke CtrlP in Normal Mode
let g:ctrlp_working_path_mode = 2 "Don't manage working directory
let g:ctrlp_root_markers = ['.vim/']
nmap <D-k> :CtrlPBuffer <CR>
nmap <D-j> :CtrlPMRU <CR>

