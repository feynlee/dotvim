"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Tex_nine Settings
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:tex_flavor = 'pdflatex'
let g:tex_viewer = {'app': 'xdg-open', 'target': 'pdf'}
" let g:tex_verbose = 1


" let g:tex_bibfiles = ['~/Library/texmf/bibtex/bib/References.bib']
let g:tex_bibfiles = ['References.bib']

" let g:tex_fold_enabled=1
" disable Tex-9
" au BufReadPre *.tex let b:init_tex_nine = 1

" Don't Auto-complete [ ( {
let g:tex_cycle_delimeters = 0
" Change the <LocalLeader>S to mapping to \Sigma in ftplugin/tex.vim
autocmd FileType tex inoremap <buffer> <LocalLeader>S \Sigma

" ~/.vim/bundle/TeX-9/ftplugin/tex_nine.vim

