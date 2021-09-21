"True colour.
let $NVIM_TUI_ENABLE_TRUE_COLOR=1

"Completion.
set complete=.,w,b,u,t,i,kspell

"Folding.
set foldenable

" Keep buffers open
set hidden

"Enhance searching.
set ignorecase

"Disable errorbells.
set noerrorbells

"Tweak highlighting.
set nohlsearch

"Line numbers.
set number relativenumber

"Column numbers.
set ruler

"Tabs to spaces, thanks haskell.
set expandtab
set smartindent
set shiftwidth=4

"Spellcheck.
set spell
hi clear SpellBad
hi SpellBad gui=undercurl

"Disable wrap because it's terrible
set nowrap

"Fix splitting.
set splitbelow splitright

"Store undo after save.
set undofile

"Highlight colunm
" :autocmd InsertEnter * set cul
" :autocmd InsertLeave * set nocul

"Backend for plugins.
filetype plugin on
filetype indent plugin on

"be iMproved, required.
set nocompatible

"Highlight yanked text.
let g:highlightedyank_highlight_duration = 200

"Remove trailing whitespace.
autocmd BufWritePre * %s/\s\+$//e

"autochdir by opening vimrc.
autocmd BufRead init.vim set autochdir

" autocmd Filetype tex :SyntasticToggleMode
