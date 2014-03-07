"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Latex-box Settings
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" View pdf using skim
" let g:LatexBox_viewer = '/Applications/Skim.app'
let g:LatexBox_latexmk_options = "-pdflatex='pdflatex -synctex=1 \%O \%S'"
let g:LatexBox_latexmk_async = 1
let g:LatexBox_latexmk_preview_continuously = 1

map <silent> <Leader>ls :silent
                \ !/Applications/Skim.app/Contents/SharedSupport/displayline
                \ <C-R>=line('.')<CR> "<C-R>=LatexBox_GetOutputFile()<CR>"
                \ "%:p" <CR>

" map <silent> <Leader>ls :silent
"   \!/Applications/Skim.app/Contents/SharedSupport/displayline
"   \ <C-R>=line('.')<CR> "<C-R>=LatexBox_GetOutputFile()<CR>" "%:p" <CR>

nmap <silent> ,tc :LatexTOC <CR>


" The Following Mappings are defined in tex.vim in ftplugin folder
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Change the current enironment
nmap <buffer> ,ce <Plug>LatexChangeEnv
"
" Wrap Selection with Latex Commands
vmap <buffer> ,wc <Plug>LatexWrapSelection
"
" Wrap the Current Selection with Latex Environment
vmap <buffer> ,we <Plug>LatexEnvWrapSelection

