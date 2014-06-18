set nocompatible               " be iMproved

filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'

" core plugins
Bundle 'flazz/vim-colorschemes'
"Bundle 'FuzzyFinder'

" GUI plugins
Bundle 'bling/vim-airline'

" File management plugins
Bundle 'scrooloose/nerdtree'
Bundle 'kien/ctrlp.vim'
Bundle 'vim-scripts/LustyJuggler'
" Bundle 'amiorin/vim-project'
Bundle 'feynlee/project'

" Editing plugins
Bundle 'SirVer/ultisnips'
Bundle 'Shougo/neocomplcache.vim'
Bundle 'vim-scripts/YankRing.vim'
Bundle 'sjl/gundo.vim'
Bundle 'vim-scripts/tComment'
Bundle 'tpope/vim-surround'
Bundle 'edsono/vim-matchit'
Bundle 'haya14busa/vim-easymotion'
Bundle 'godlygeek/tabular'
Bundle 'vim-scripts/Align'

" Tex plugins
Bundle 'feynlee/TeX-9'
" Bundle 'TeX-9'
Bundle 'feynlee/LaTeX-Box'

" Git plugins
Bundle 'tpope/vim-fugitive'
Bundle 'gregsexton/gitv'

" vim main plugins
Bundle 'tpope/vim-abolish'
Bundle 'tpope/vim-repeat'
Bundle 'L9'
"Bundle 'mileszs/ack.vim'
"Bundle 'rking/ag.vim'
"Bundle 'henrik/vim-indexed-search'
"Bundle 'jiangmiao/auto-pairs'
"Bundle 'xolox/vim-session'
"Bundle 'xolox/vim-misc'
"Bundle 'editorconfig/editorconfig-vim'
"Bundle 'rhysd/clever-f.vim'

" Debugging plugins
" Bundle 'scrooloose/syntastic.git'



" non github repos
"Bundle 'git://git.wincent.com/command-t.git'
" git repos on your local machine (ie. when working on your own plugin)
"Bundle 'file:///Users/gmarik/path/to/plugin'
" ...

filetype plugin indent on     " required!

" Mappings
nmap <silent> ,vv :e ~/.vim/startup/vundle.vim <CR>

"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..