"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Latex General Settings
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:tex_indent_items = 1 " indent for items
let g:tex_comment_nospell= 1 " no spell checking for comments
" let g:tex_fold_enabled = 1 " enable folding


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" only for tex files
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

if has("autocmd")

  " Set File type to 'text' for files ending in .txt
  autocmd BufNewFile,BufRead *.tex setfiletype tex

  " Enable soft-wrapping for text files
  autocmd FileType tex setlocal fo=tcq nolist textwidth=0
  autocmd FileType tex nmap <C-n> (
  autocmd FileType tex nmap <C-m> )
  autocmd FileType tex setlocal spell spelllang=en_us
  " Define what is a word
  autocmd FileType tex set iskeyword=@,48-57,_,-,:,192-255
  autocmd FileType tex highlight Cursor guifg=black guibg=Yellow
endif

" Define new Command for tex
" command! SUBScript :normal i[<Tab>


" In Tex file, do the following mapping, works with Tex-9 plug-in
autocmd FileType,BufWinEnter * call F12map() 
"
""
function! F12map() 
    if &filetype == "tex" 
       map  <silent> <buffer> <D-i> :call LatexBox_JumpToNextBraces(0)<CR>
       map  <silent> <buffer> <D-u> :call LatexBox_JumpToNextBraces(1)<CR>
       imap <silent> <buffer> <D-i> <C-R>=LatexBox_JumpToNextBraces(0)<CR>
       imap <silent> <buffer> <D-u> <C-R>=LatexBox_JumpToNextBraces(1)<CR>
       nmap <silent> <buffer> ,a vie:Align &<CR>
       " inoremap <buffer> ;u ;u<C-R>=UltiSnips_Anon('^{$1}', ';u', 'superscript', 'i')<cr>
       " inoremap <buffer> ;d ;d<C-R>=UltiSnips_Anon('_{$1}', ';d', 'subscript', 'i')<cr>
       " inoremap <buffer> ;a ;a<C-R>=UltiSnips_Anon('_{$1}^{$2}', ';a', 'sub-superscript', 'i')<cr>
       " inoremap <buffer> ;bf ;bf<C-R>=UltiSnips_Anon('\\mathbf{$1}', ';bf', '\mathbf', 'i')<cr>
       inoremap <buffer> ;. \\cdot
       inoremap <buffer> ;t \\times
       " inoremap <buffer> $$ $$<C-R>=UltiSnips_Anon('$$1$', '$$', 'math', 'i')<cr>
       "inoremap <silent> ;i \int
       inoremap <buffer> ;i \\int
       function! Sub_script()
         exec "normal i[\<Tab>"
       endfunction
       " au InsertCharPre [ call Sub_script()
       " imap <silent> <buffer> [ call Sub_script()<CR>
       " inoremap <silent> [  [<C-R>=UltiSnips_AddSnippet('[', '[$1]', 'brackets', '!i')<cr>
       " inoremap <buffer> ;I ;I<C-R>=UltiSnips_Anon('\\int_{$1}^{$2}$3',';I', 'integral', 'i')<cr>
       " inoremap <buffer> ;/ ;/<C-R>=UltiSnips_Anon('\\frac{$1}{$2}$3', ';/', 'fraction', 'i')<cr>
       " inoremap <buffer> [ [<C-R>=UltiSnips_Anon('[$1]', '[', 'brackets', 'i')<cr>
       " inoremap <buffer> ( (<C-R>=UltiSnips_Anon('($1)', '(', 'parentheses', 'i')<cr>
       " inoremap <buffer> { {<C-R>=UltiSnips_Anon('{$1}', '{', 'braces', 'i')<cr>
       " imap <buffer> <Tab> <C-l>
       highlight Cursor guifg=black guibg=Yellow
       "       imap <C--> __<Tab>
     endif 
endfunction 


