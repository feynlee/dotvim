"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Formating Set Up
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set autoindent        " set auto-indenting on for programming
set tabstop=2         " set our tabs to four spaces
set expandtab         " use the appropriate number of spaces to insert a <Tab>
set shiftround        " Round indent off to 4 spaces
set shiftwidth=4      " Standard seems to be 2 spaces over nowadays
set softtabstop=4     " counts n spaces when DELETE or BACKSPACE is used
set scrolloff=5       " Keep 5 lines above cursor when scrolling
set ww=<,>,[,]        " whichwrp -- left/right keys can traverse up/down
set foldmethod=manual " Mannual folding
"set wrap              " Enable wrap
set fo=tcq            " FormatOptions = tcq
set lbr               " line break, don't break in the middle of words
set textwidth=0       " Wrap at window width
set nolist
"set wrapmargin=0
"set display=lastline       " don't display @ with long paragraph

"F7 WordProcessorOn
map <silent> ,wo :set linebreak <CR> :set display+=lastline <CR> :set wrap <CR> :set fo=watcq <CR>
"F8 WordProcessorOff
map <silent> ,wf :set nowrap <CR> :set nospell <CR> :set fo=tcq <CR>

