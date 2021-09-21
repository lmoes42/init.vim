set complete=.,w,b,u,t,i,kspell
set foldenable
set ignorecase
set noerrorbells
set nohlsearch
set number relativenumber
set ruler
set smartindent
set spell
set splitbelow splitright
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
filetype plugin on
filetype indent plugin on
set nocompatible              " be iMproved, required
" filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call plug#begin('~/.vim/plugged')
	Plug 'mbbill/undotree'
	Plug 'machakann/vim-highlightedyank'
	Plug 'neovimhaskell/haskell-vim'
	Plug 'LaTeX-Box-Team/LaTeX-Box'
        Plug 'preservim/nerdtree'
	Plug 'matze/vim-move'
        Plug 'tpope/vim-repeat'
        " Plug 'https://github.com/McSinyx/vim-octave.git', {'for': 'octave'}
	Plug 'vim-syntastic/syntastic'
        Plug 'vim-airline/vim-airline'
        Plug 'vim-airline/vim-airline-themes'
        Plug 'junegunn/limelight.vim'
	Plug 'junegunn/goyo.vim'
	Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
	Plug 'junegunn/fzf.vim'
	Plug 'tpope/vim-commentary'
	Plug 'tpope/vim-surround'
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
        "
        "Colourschemes
        Plug 'colepeters/spacemacs-theme.vim'
        Plug 'rafi/awesome-vim-colorschemes'
        Plug 'morhetz/gruvbox'
        Plug 'ayu-theme/ayu-vim'
        Plug 'drewtempelmeyer/palenight.vim'
        "
        "
	" Plug 'justinmk/vim-sneak'
        " Plug 'lervag/vimtex'
        " Plug 'flazz/vim-colorschemes'
call plug#end()

" Colourscheme
 if $tERM == "xterm-256color"
         set t_Co=256
 endif
 set termguicolors
 set background=dark
 let g:gruvbox_contrast_dark='medium'
 colorscheme gruvbox
 " colorscheme palenight
command! Gruv colorscheme gruvbox
command! Pale colorscheme palenight
command! Sp colorscheme spacemacs-theme

let g:highlightedyank_highlight_duration = 200

" fzf
        nnoremap <C-p> :Files<Enter>
        nnoremap <C-c> :Colors<Enter>
        nnoremap <Tab> :Buffers<Enter>
        " Empty value to disable preview window altogether
        let g:fzf_preview_window = ''

        " Always enable preview window on the right with 60% width
        let g:fzf_preview_window = 'right:60%'

        " Preview window
        let g:fzf_layout = { 'window' : {'width' : 0.8, 'height': 0.8 } }
        let $FZF_DEFAULT_OPTS='--reverse'
"Undotree
        nnoremap <C-t> :UndotreeToggle<Enter>
        if !exists('g:undotree_WindowLayout')
            let g:undotree_WindowLayout = 3
        endif
" Terminal settings
        tnoremap <C-w> <C-\><C-n>
        let g:terminal_color_4 = '#ff0000'
        let g:terminal_color_5 = 'green'
        command! VT vsp | term
        command! HT sp | term

" AIRLINE SETTINGS
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'unique_tail'
let base16colorspace=256  " Access colors present in 256 colorspace
" END AIRLINE SETTINGS
"
"remove trailing whitespace on save
autocmd BufWritePre * %s/\s\+$//e
augroup autodetect
  autocmd!
	autocmd BufRead,BufNewFile *.tex set filetype=tex
	autocmd BufNewFile *.cpp set filetype=cpp
augroup END

"open templates for some file types
if has("autocmd")
  augroup templates
    autocmd BufNewFile *.tex 0r ~/.vim/templates/textemp.tex
    autocmd BufNewFile *.cpp 0r ~/.vim/templates/cpptemp.cpp
augroup END
endif
"
 " Syntax checking
 set statusline+=%#warningmsg#
 set statusline+=%{SyntasticStatuslineFlag()}
 set statusline+=%*
 command! Synt SyntasticToggleMode

 let g:syntastic_always_populate_loc_list = 1
 let g:syntastic_auto_loc_list            = 1
 let g:syntastic_check_on_open            = 0
 let g:syntastic_check_on_wq              = 0

 " Boju
        " nnoremap <C-S> :Todo<Enter>
        " nnoremap <C-S> <Plug>BujoAddnormal
        " inoremap <C-S> <Plug>BujoAddinsert
        " nnoremap <C-Q> <Plug>BujoChecknormal
        " inoremap <C-Q> <Plug>BujoCheckinsert


 " General remappings
        command! Set edit ~/.config/nvim/init.vim
        command! Settings edit ~/.config/nvim/init.vim
	map <C-n> :NERDTreeToggle<CR>
	let g:move_key_modifier = 'C'
	map <C-g> :Goyo<enter>
        " autocmd! VimEnter Limelight
        command! T1 set termguicolors
        command! T0 set notermguicolors
        command! L Limelight!!
        autocmd! User GoyoEnter Limelight
        " autocmd! User GoyoEnter T1
        autocmd! User GoyoLeave Limelight!
        " autocmd! User GoyoLeave set notermguicolors
	" nnoremap <Tab> gt
	nnoremap <Space> <C-w>w

	noremap <silent> <C-Left> :vertical resize +3<CR>
	noremap <silent> <C-Right> :vertical resize -3<CR>
	noremap <silent> <C-Up> :resize -3<CR>
	noremap <silent> <C-Down> :resize +3<CR>

	map <Leader>th <C-w>t<C-w>H
	map <Leader>tk <C-w>t<C-w>K
	autocmd filetype tex call TexNewMathZone("E","align*",1)
	autocmd filetype tex call TexNewMathZone("E","align",1)
	autocmd filetype tex call TexNewMathZone("E","array",1)

	"General
	" autocmd filetype tex let g:LatexBox_viewer='TermPDF'
	autocmd FileType tex inoremap ;en \begin{enumerate}<Enter><Enter>\end{enumerate}<Enter><Enter><++> <Esc>3kA\item<Space>
	autocmd FileType tex inoremap ;itm \begin{itemize}<Enter><Enter>\end{itemize}<Enter><Enter><++> <Esc>3kA\item<Space>
	autocmd FileType tex inoremap ;it <Esc>o\item<Space>
	autocmd FileType tex inoremap ;l <Esc>/<++><Enter>vf>xi
	autocmd FileType tex nnoremap ;l /<++><Enter>vf>xi
	autocmd FileType tex inoremap ;tit \textit{}<++> <Esc>T{i
	autocmd FileType tex inoremap ;tbf \textbf{}<++> <Esc>T{i
	autocmd FileType tex inoremap ;cite \cite{}<++> <Esc>T{i<C-x><C-o>
	autocmd FileType tex inoremap ;ref \ref{}<++> <Esc>T{i<C-x><C-o>
	autocmd FileType tex inoremap ;sec \section{±}<Enter><++><Esc>kf±li<Backspace>
	autocmd FileType tex inoremap ;ssec \subsection{±}<Enter><++><Esc>kf±li<Backspace>
	autocmd FileType tex inoremap ;sssec \subsubsection{±}<Enter><++><Esc>kf±li<Backspace>
	autocmd FileType tex inoremap ;env \begin{}<Enter>\end{}<Enter><++><Esc>k^i<Space><Space><Esc>f{<C-v>kA

	"Navigation
	autocmd FileType tex nnoremap ,be /begin{document}<Enter>j
	autocmd FileType tex nnoremap ,cmd /%commands<Enter>
	autocmd FileType tex nnoremap ,ncmd /%commands<Enter> o \newcommand{\}[<++>]{<++>}<Esc>T\i
	autocmd FileType tex nnoremap ,rncmd /%commands<Enter> o \renewcommand{\}[<++>]{<++>}<Esc>T\i
	autocmd FileType tex nnoremap ,up 9ggO\usepackage{}<Esc>i

	"Maths
        ino <C-A> <C-O>yiW<End>=<C-R>=<C-R>0<CR>
	autocmd FileType tex inoremap ;mbf \mathbf{}<++> <Esc>T{i
	autocmd FileType tex inoremap ;mbb \mathbb{} <++> <Esc>F{a
	autocmd FileType tex inoremap ;chse \binom{}{<++>} <++> <Esc>Fmla
	autocmd FileType tex inoremap ;tr ^\mathsf{T}
	autocmd FileType tex inoremap ;hrm ^\mathsf{H}
	autocmd FileType tex inoremap ;empt \emptyset
	autocmd FileType tex inoremap ;max \max_{ }\left{ <++> \right} <++> <Esc>T{;i
	autocmd FileType tex inoremap ;min \min_{ }\left{ <++> \right} <++> <Esc>T{;i
	autocmd FileType tex inoremap ;sup \sup_{ }\left{ <++> \right} <++> <Esc>T{;i
	autocmd FileType tex inoremap ;infi \inf_{ }\left{ <++> \right} <++> <Esc>T{;i
	autocmd FileType tex inoremap ;dmo <Esc>/%commands<Enter>o\DeclareMathOperator{\}{ <++> }<Esc>T\i
	autocmd FileType tex inoremap ;lpl \mathcal{L}\left\{\right\} <++> <Esc>F{a
	autocmd FileType tex inoremap ;al \begin{align*}<Enter><Enter>\end{align*}<Enter><++> <Esc>2kcc
	" autocmd FileType tex inoremap ;al \begin{align*}<Enter><Enter>\end{align*}<Enter><++> <Esc>2kA<Space><Tab>
	autocmd FileType tex inoremap ;egn \begin{equation}<Enter><Enter>\end{equation}<Enter><++> <Esc>2kA<Space><Tab>
	autocmd FileType tex inoremap ;eqn \begin{equation}<Enter><Enter>\end{equation}<Enter><++> <Esc>2kA<Space><Tab>
	autocmd FileType tex inoremap ;prt \frac{\partial ±}{partial <++>} <++> <Esc>F±a<Backspace>
        autocmd FileType tex inoremap ;bnd \partial
	autocmd FileType tex inoremap ;ra \Rightarrow
	autocmd FileType tex inoremap ;Ra \Longrightarrow
	autocmd FileType tex inoremap ;thus \therefore
	autocmd FileType tex inoremap ;la \Leftarrow
	autocmd FileType tex inoremap ;lra \Leftrightarrow
	autocmd FileType tex inoremap ;Lra \Longleftrightarrow
	autocmd FileType tex inoremap ;rp \rightarrow
	autocmd FileType tex inoremap ;appr \approx
	autocmd FileType tex inoremap ;eqv \equiv
        autocmd FileType tex inoremap ;iso \cong
        autocmd FileType tex inoremap :in \in
	autocmd FileType tex inoremap ;thm \begin{theorem}[] <Enter><++> <Enter>\end{theorem}<Enter><++> <Esc>3kf[a
	autocmd FileType tex inoremap ;cor \begin{corollary}[] <Enter><++> <Enter>\end{corollary}<Enter><++> <Esc>3kf[a
	autocmd FileType tex inoremap ;mma \begin{lemma}[] <Enter><++> <Enter>\end{lemma}<Enter><++> <Esc>3kf[a
	autocmd FileType tex inoremap ;df \begin{definition}[] <Enter><++> <Enter>\end{definition}<Enter><++> <Esc>3kf[a
	autocmd FileType tex inoremap ;prf \begin{proof} <Enter>± <Enter>\end{proof}<Enter><++> <Esc>2k^a<Backspace>
	autocmd FileType tex inoremap ;arr \begin{array}{DUMMYTEXT} <Enter><++> <Enter>\end{array}<Enter><++> <Esc>?DUMMYTEXT<Enter>di{i
	autocmd FileType tex inoremap ;mtr \begin{bmatrix}<Enter><Enter>\end{bmatrix}<Enter><++> <Esc>2kcc<C-t>
	" autocmd FileType tex inoremap ;mtr \begin{bmatrix}<Enter>blargh<Enter>\end{bmatrix}<Enter><++> <Esc>?blargh<Enter>Di
	autocmd FileType tex inoremap ;det \begin{vmatrix}<Enter>blargh<Enter>\end{vmatrix}<Enter><++> <Esc>?blargh<Enter>Di
	autocmd FileType tex inoremap ;sqrt \sqrt{}<++> <Esc>T{i
	autocmd FileType tex inoremap ;root \sqrt[]{ <++> }<++> <Esc>T[i
	autocmd FileType tex inoremap ;mthr \mathbb{R}
	autocmd FileType tex inoremap ;mthz \mathbb{Z}
	autocmd FileType tex inoremap ;mthn \mathbb{N}
	autocmd FileType tex inoremap ;mthc \mathbb{C}
	autocmd FileType tex inoremap ;mthq \mathbb{Q}
	autocmd FileType tex inoremap ;prb \mathbb{P}\left(±\right)<++> <Esc>T±i<Backspace>
	autocmd FileType tex inoremap ;pre \mathbb{E}\left(±\right)<++> <Esc>T±i<Backspace>
	autocmd FileType tex inoremap ;tex \text{ ± } <++> <Esc>T±i<Backspace>
	autocmd FileType tex inoremap ;inv ^{-\!1}<Space>
	autocmd FileType tex inoremap ;ep \upvarepsilon
        autocmd FileType tex inoremap ;ball B_{}^{<++>} \left( <++> \right) <++> <Esc>T_a
        autocmd FileType tex inoremap ;metr d_{} \left( <++>, <++> \right) <++> <Esc>T_a
        autocmd FileType tex inoremap ;subs \subseteq
        autocmd FileType tex inoremap ;ssubs \subset
        autocmd FileType tex inoremap ;sups \supseteq
        autocmd FileType tex inoremap ;ssups \supset
        autocmd FileType tex inoremap ;intr \bigcap_{}^{ <++> } <Esc>T_a
        autocmd FileType tex inoremap ;union \bigcup_{}^{ <++> } <Esc>T_a
	autocmd FileType tex inoremap ;sgm \sigma
	autocmd FileType tex inoremap ;Sgm \Sigma
	autocmd FileType tex inoremap ;alp \alpha
	autocmd FileType tex inoremap ;bet \beta
	autocmd FileType tex inoremap ;pi \pi
	autocmd FileType tex inoremap ;tau \tau
	autocmd FileType tex inoremap ;lmd \lambda
	autocmd FileType tex inoremap ;gam \gamma
	autocmd FileType tex inoremap ;the \theta
	autocmd FileType tex inoremap ;The \Theta
	autocmd FileType tex inoremap ;fa \forall
	autocmd FileType tex inoremap ;exi \exists
	autocmd FileType tex inoremap ;de \delta
	autocmd FileType tex inoremap ;De \Delta
	autocmd FileType tex inoremap ;ze \zeta
	autocmd FileType tex inoremap ;nbl \nabla
	autocmd FileType tex inoremap ;x \times
	autocmd FileType tex inoremap ;d \cdot
	autocmd FileType tex inoremap ;set \left\{ ± \mid <++> \right\} <++> <Esc>F±a<Backspace>
	autocmd FileType tex inoremap ;O \mathcal{O}() <++> <Esc>F)i
	autocmd FileType tex inoremap ;mc \mathcal{}() <++> <Esc>F{a
	autocmd FileType tex inoremap ;cas \begin{dcases}<Enter>±<Enter>\end{dcases}<Enter><++> <Esc>2k^a<Backspace>
	autocmd FileType tex inoremap ;abs \left\vert ± \right\vert <++> <Esc>T±i<Backspace>
        autocmd FileType tex inoremap ;< \left< ± \right> <++> <Esc>F±xi
	autocmd FileType tex inoremap ;( \left( \right)<++> <Esc>T(i
	autocmd FileType tex inoremap ;[ \left[ \right]<++> <Esc>T[i
	autocmd FileType tex inoremap ;{ \left\{ \right\}<++> <Esc>T{i
	autocmd FileType tex inoremap ;ipr \left\langle ± \right\rangle <++> <Esc>T±i<Backspace>
	autocmd FileType tex inoremap ;ceil \left\lceil ± \right\rceil <++> <Esc>T±i<Backspace>
	autocmd FileType tex inoremap ;floor \left\lfloor ± \right\rfloor <++> <Esc>T±i<Backspace>
	autocmd FileType tex inoremap ;nrm \left\Vert ± \right\Vert <++> <Esc>T±i<Backspace>
	autocmd FileType tex inoremap ;log \ln\left(\right) <++> <Esc>F(a
	autocmd FileType tex inoremap ;exp e^{} <++> <Esc>F{a
        autocmd FileType tex inoremap ;inz \in\mathbb{Z}
	autocmd FileType tex inoremap ;int \int\limits_{±}^{<++> }<++> \,\mathrm{d}<++> <Esc>T±i<Backspace>
	autocmd FileType tex inoremap ;iint \iint\limits_{±}^{<++> }<++> \,\mathrm{d}<++> \,\mathrm{d}<++> <Esc>T±i<Backspace>
	autocmd FileType tex inoremap ;iiint \iiint\limits_{±}^{<++> }<++> \,\mathrm{d}<++> \,\mathrm{d}<++> \,\mathrm{d}<++> <Esc>T±i<Backspace>
	autocmd FileType tex inoremap ;oint \oint_{±} <++> \,\mathrm{d}<++> <Esc>T±i<Backspace>
	autocmd FileType tex inoremap ;ooint \ooint_{±} <++> \,\mathrm{d}<++> \,\mathrm{d}<++> <Esc>T±i<Backspace>
	autocmd FileType tex inoremap ;div \frac{\mathrm{d}±}{\mathrm{d}<++> }<++> <Esc>T±i<Backspace>
	autocmd FileType tex inoremap ;frc \frac{±}{<++> }<++> <Esc>T±i<Backspace>
	autocmd FileType tex inoremap ;tm $±$<++> <Esc>T±i<Backspace>
	autocmd FileType tex inoremap ;sum \sum_{±}^{<++>} <++> <Esc>T±i<Backspace>
	autocmd FileType tex inoremap ;prod \prod_{±}^{<++>} <++> <Esc>T±i<Backspace>
	autocmd FileType tex inoremap ;bar \bar{±} <++> <Esc>T±i<Backspace>
        autocmd FileType tex inoremap ;circ \mathring{±} <++> <Esc>T±i<Backspace>
	autocmd FileType tex inoremap ;dot \dot{±} <++> <Esc>T±i<Backspace>
	autocmd FileType tex inoremap ;tld \tilde{±} <++> <Esc>T±i<Backspace>
	autocmd FileType tex inoremap ;lim \lim_{±\rightarrow <++> } <++> <Esc>T±i<Backspace>
	autocmd FileType tex inoremap ;inf \infty
	autocmd FileType tex inoremap ;quad \frac{-± \pm \sqrt{<++>^2 - 4<++>\cdot<++>}}{2\cdot<++>} <Esc>T±i<Backspace>
	autocmd FileType tex inoremap ;mtc \mathcal{±}<++> <Esc>T±i<Backspace>
	autocmd FileType tex inoremap ;_ _{} <++> <Esc>F{a
	autocmd FileType tex inoremap ;s _{} <++> <Esc>F{a
	autocmd FileType tex inoremap ;^ ^{} <++> <Esc>F{a
	autocmd FileType tex inoremap ;S ^{} <++> <Esc>F{a

"Python
	autocmd FileType python let g:python_highlight_all = 1
	autocmd FileType python Python3Syntax
	autocmd FileType python inoremap ;int int(±)<++><Esc>F±li<Backspace>
	autocmd FileType python inoremap ;l <Esc>/<++><Enter>da<i
	autocmd FileType python inoremap ;str str(±)<++><Esc>F±li<Backspace>
	autocmd Filetype python inoremap ;for for ± in <++>:<Enter><Tab><++> <Esc>k^f±li<Backspace>
	autocmd Filetype python inoremap ;if if ±:<Enter><Tab><++> <Esc>k^f±li<Backspace>
	autocmd Filetype python inoremap ;var ±= <++> <Enter><++> <Esc>k/±<Enter>li<Backspace>
	autocmd Filetype python inoremap ;whi while ±:<Enter><Tab><++> <Esc>k^f±li<Backspace>
	autocmd Filetype python nnoremap ,imp gg O from ± import <++> <Esc>?±<Enter>li<Backspace>

"C++
	autocmd FileType cpp inoremap ,l <Esc>/<++><Enter>vf>xi
	autocmd FileType cpp inoremap \for for(int ± = <++> ; <++> ; <++> ){<Enter><++> ; <Enter>}<++> <Esc>2k^f±a<Backspace>
	autocmd FileType cpp inoremap \if if(±){<Enter><++> ;<Enter>}<Enter><++> ;<Esc>3k^f±a<Backspace>
	autocmd FileType cpp inoremap \nl <Esc>$i<Enter>;<Esc>i
	autocmd FileType cpp inoremap \np <Esc>0ggO ± (<++>){<Enter> <++> ; <Enter> }<Esc>0gg^a<Backspace>
	autocmd FileType cpp inoremap \nv ±=<++> ;<Esc>T±i<Backspace>
	autocmd FileType cpp inoremap \while while(±){<Enter><++> <Enter>}<Enter><++> ;<Esc>3k^f±a<Backspace>
	autocmd FileType cpp nnoremap \ma /int main()<Enter>j^
	autocmd FileType cpp nnoremap \np 0ggO ± (<++>){<Enter> <++> ; <Enter> }<Esc>0gg^a<Backspace>
	autocmd Filetype cpp inoremap \in <Esc>ggO#include<>T<i
"Haskell
	let g:haskell_enable_quantification     = 1  " to enable highlighting of `forall`
	let g:haskell_enable_recursivedo        = 1  " to enable highlighting of `mdo` and `rec`
	let g:haskell_enable_arrowsyntax        = 1  " to enable highlighting of `proc`
	let g:haskell_enable_pattern_synonyms   = 1  " to enable highlighting of `pattern`
	let g:haskell_enable_typeroles          = 1  " to enable highlighting of type roles
	let g:haskell_enable_static_pointers    = 1  " to enable highlighting of `static`
	let g:haskell_backpack                  = 1  " to enable highlighting of backpack keywords
