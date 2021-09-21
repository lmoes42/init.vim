" (_)     (_) |       (_)
"  _ _ __  _| |___   ___ _ __ ___
" | | '_ \| | __\ \ / / | '_ ` _ \
" | | | | | | |_ \ V /| | | | | | |
" |_|_| |_|_|\__(_)_/ |_|_| |_| |_
" ____________________________________________________________________________________________________________

set complete=.,w,b,u,t,i,kspell							" 		   Completion.
set foldenable									" 		      Folding.
set ignorecase									" 	    Enhance searching.
set noerrorbells								"          Disable errorbells.
set nohlsearch									"          Tweak highlighting.
set number relativenumber							"                Line numbers.
set ruler									"              Column numbers.
set smartindent									" 	       Tabs to spaces.
set spell									" 	           Spellcheck.
set expandtab									" 	       Tabs to spaces.
set splitbelow splitright							" 	        Fix splitting.
let $NVIM_TUI_ENABLE_TRUE_COLOR=1						" 	          True colour.
filetype plugin on								"         Backend for plugins.
filetype indent plugin on						        "         Backend for plugins.
set nocompatible							      	" 	be iMproved, required.
										"
call plug#begin('~/.vim/plugged')						"		      Plugins.
										"
	Plug 'KeitaNakamura/tex-conceal.vim', {'for': 'tex'}			"	   Better TeX conceal.
	Plug 'SirVer/ultisnips'							" 	             Snippets.
	Plug 'francoiscabrol/ranger.vim'					" 		File explorer.
	Plug 'honza/vim-snippets'						" 	        More snippets.
	Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }			" 	  Fuzzyfinder support.
	Plug 'junegunn/fzf.vim'							" 	  Fuzzyfinder support.
	Plug 'junegunn/goyo.vim'						" 	         Reading mode.
	Plug 'junegunn/limelight.vim'					        " Show only current paragraph.
	Plug 'junegunn/vim-easy-align'						" 	       	   Align text.
	Plug 'lervag/vimtex'							" 			LaTeX.
	Plug 'machakann/vim-highlightedyank'					" 	       Highlight yank.
	Plug 'matze/vim-move'							"  Use ctrl+hjkl to move text.
	Plug 'mbbill/undotree'							" 	          Better undo.
	Plug 'neoclide/coc.nvim', {'branch': 'release'}				" 	           Completion.
	Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}	" 	           Completion.
	Plug 'sheerun/vim-polyglot'						"   Syntax for many languages.
	Plug 'tpope/vim-commentary'						" 	    Better commenting.
	Plug 'tpope/vim-fugitive'						" 	      git integration.
	Plug 'tpope/vim-repeat'							" 	     Extend . command.
	Plug 'tpope/vim-speeddating'						" 	Extend <C-a> to dates.
	Plug 'tpope/vim-surround'						" 	   Change Parentheses.
	Plug 'vim-syntastic/syntastic'						" 	  Syntax Highlighting.
	Plug 'vuciv/vim-bujo'							"      Todo list in git repos.
        Plug 'preservim/nerdtree'						" 	             Filetree.
        Plug 'vim-airline/vim-airline'						" 	           Status bar.
        Plug 'vim-airline/vim-airline-themes'					" 	 Theme for status bar.
										"
										"
	Plug 'morhetz/gruvbox'							" 	  Absolutely Required.
        Plug 'colepeters/spacemacs-theme.vim'					" 	   Technically heresy.
        Plug 'rafi/awesome-vim-colorschemes'					"	         Colourscheme.
        Plug 'ayu-theme/ayu-vim'                                                "	         Colourscheme.
        Plug 'drewtempelmeyer/palenight.vim'					"	         Colourscheme.
	Plug 'mhinz/vim-startify'						"	           Start menu.

call plug#end()
" Colourscheme
	if $TERM == "xterm-257color"
		set t_Co=256
	endif
	set termguicolors
	set background=dark
	let g:gruvbox_contrast_dark='medium'
	colorscheme gruvbox

	command! Gruv colorscheme gruvbox
	command! Pale colorscheme palenight
	command! Sp colorscheme spacemacs-theme

	let g:highlightedyank_highlight_duration = 200

    let g:startify_custom_header = [
			    \ '	 ________   _______   ________  ___      ___ ___  _____ ______      ',
			    \ '	|\   ___  \|\  ___ \ |\   __  \|\  \    /  /|\  \|\   _ \  _   \    ',
			    \ '	\ \  \\ \  \ \   __/|\ \  \|\  \ \  \  /  / | \  \ \  \\\__\ \  \   ',
			    \ '	 \ \  \\ \  \ \  \_|/_\ \  \\\  \ \  \/  / / \ \  \ \  \\|__| \  \  ',
			    \ '	  \ \  \\ \  \ \  \_|\ \ \  \\\  \ \    / /   \ \  \ \  \    \ \  \ ',
			    \ '	   \ \__\\ \__\ \_______\ \_______\ \__/ /     \ \__\ \__\    \ \__\',
			    \ '	    \|__| \|__|\|_______|\|_______|\|__|/       \|__|\|__|     \|__|',
			    \ ]
" fzf
        nno <C-p> :Files<Enter>
        nno <C-c> :Colors<Enter>
        nno <Tab> :Buffers<Enter>
        " Empty value to disable preview window altogether
        let g:fzf_preview_window = ''

        " Always enable preview window on the right with 60% width
        let g:fzf_preview_window = 'right:60%'

        " Preview window
        let g:fzf_layout = { 'window' : {'width' : 0.8, 'height': 0.8 } }
        let $FZF_DEFAULT_OPTS='--reverse'
	let g:fzf_colors =
	\ { "fg":      ["fg", "Normal"],
	  \ "bg":      ["bg", "Normal"],
	  \ "hl":      ["fg", "IncSearch"],
	  \ "fg+":     ["fg", "CursorLine", "CursorColumn", "Normal"],
	  \ "bg+":     ["bg", "CursorLine", "CursorColumn"],
	  \ "hl+":     ["fg", "IncSearch"],
	  \ "info":    ["fg", "IncSearch"],
	  \ "border":  ["fg", "Ignore"],
	  \ "prompt":  ["fg", "Comment"],
	  \ "pointer": ["fg", "IncSearch"],
	  \ "marker":  ["fg", "IncSearch"],
	  \ "spinner": ["fg", "IncSearch"],
	  \ "header":  ["fg", "WildMenu"] }

"Undotree
        nno <C-t> :UndotreeToggle<Enter>
        if !exists('g:undotree_WindowLayout')
            let g:undotree_WindowLayout = 3
        endif
" Git
	nno <leader>g :G<c-f>a<space>
	nno <leader>gm :G<cr>
	nno <leader>gc :G commit<cr>
	nno <leader>gl :G log<cr>
	nno <leader>gm :G merge <cr>
" Terminal settings
        tnoremap <C-w> <C-\><C-n>
	fun! s:vsplitterm()
		vsp | term
		set nospell
                set nonumber
                set norelativenumber
	endfun
        command! VT call s:vsplitterm()

	fun! s:hsplitterm()
		sp | term
		set nospell
                set nonumber
                set norelativenumber
	endfun
        command! HT call s:hsplitterm()

" AIRLINE
	let g:airline#extensions#tabline#enabled = 1
	let g:airline#extensions#tabline#left_sep = ' '
	let g:airline#extensions#tabline#left_alt_sep = '|'
	let g:airline#extensions#tabline#formatter = 'unique_tail'
	let base16colorspace=256  " Access colors present in 256 colorspace
"
"remove trailing whitespace on save
autocmd BufWritePre * %s/\s\+$//e
augroup autodetect
  autocmd!
	autocmd BufRead,BufNewFile *.tex set filetype=tex
	autocmd BufNewFile *.cpp set filetype=cpp
	autocmd BufRead,BufNewFile *.m,*.oct setlocal filetype=octave
augroup END

"open templates for some file types
if has("autocmd")
  augroup templates
    autocmd BufNewFile *.cpp 0r ~/.vim/templates/cpptemp.cpp
augroup END
endif

 " Syntax checking
	 set statusline+=%#warningmsg#
	 set statusline+=%{SyntasticStatuslineFlag()}
	 set statusline+=%*
	 command! Synt SyntasticToggleMode
	 let g:syntastic_always_populate_loc_list = 1
	 let g:syntastic_auto_loc_list            = 1
	 let g:syntastic_check_on_open            = 0
	 let g:syntastic_check_on_wq              = 0

" Easy Align
	xmap ga <Plug>(EasyAlign)
	nmap ga <Plug>(EasyAlign)

 " Boju
        nmap <C-S> <Plug>BujoAddnormal
        imap <C-S> <Plug>BujoAddinsert
        nmap <C-Q> <Plug>BujoChecknormal
        imap <C-Q> <Plug>BujoCheckinsert


 " General remappings
        nno Y y$
 	nno ` <c-^>
        command! Set edit ~/.config/nvim/init.vim
        command! Settings edit ~/.config/nvim/init.vim
	map <C-n> :NERDTreeToggle<CR>
	let g:move_key_modifier = 'C'
	map <C-g> :Goyo<enter>
        command! T1 set termguicolors
        command! T0 set notermguicolors
        command! L Limelight!!
        autocmd! User GoyoEnter Limelight
        autocmd! User GoyoLeave Limelight!

	nno <Space> <C-w>w

	nno <silent> <C-Left> :vertical resize +3<CR>
	nno <silent> <C-Right> :vertical resize -3<CR>
	nno <silent> <C-Up> :resize -3<CR>
	nno <silent> <C-Down> :resize +3<CR>

	map <Leader>th <C-w>t<C-w>H
	map <Leader>tk <C-w>t<C-w>K

" Snippets
	let g:UltiSnipsExpandTrigger='<Tab>'
	let g:UltiSnipsJumpForwardTrigger = '<Tab>'
	let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'
"LaTeX
	"General LaTeX
		let g:tex_flavor = 'latex'
		set conceallevel=2
		let g:tex_conceal='abdmg'
		let g:tex_superscripts= "[0-9a-zA-W.,:;+-<>/()=]"
		let g:tex_subscripts= "[0-9aehijklmnoprstuvx,+-/().]"
		let g:tex_fast='bcmMprsSvV'
		let g:tex_conceal_frac=1

		autocmd filetype tex call TexNewMathZone("E","align*",1)
		autocmd filetype tex call TexNewMathZone("E","align",1)
		autocmd filetype tex call TexNewMathZone("E","array",1)
		ino <C-A> <C-O>yiW<End>=<C-R>=<C-R>0<CR>


" Python
	"Setup in snippets
"C++
	"Setup in snippets
"Haskell
	let g:haskell_enable_quantification     = 1  " to enable highlighting of `forall`
	let g:haskell_enable_recursivedo        = 1  " to enable highlighting of `mdo` and `rec`
	let g:haskell_enable_arrowsyntax        = 1  " to enable highlighting of `proc`
	let g:haskell_enable_pattern_synonyms   = 1  " to enable highlighting of `pattern`
	let g:haskell_enable_typeroles          = 1  " to enable highlighting of type roles
	let g:haskell_enable_static_pointers    = 1  " to enable highlighting of `static`
	let g:haskell_backpack                  = 1  " to enable highlighting of backpack keywords
