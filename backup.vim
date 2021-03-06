Plug 'kien/rainbow_parentheses.vim'
Plug 'preservim/nerdtree'
Plug 'tpope/vim-repeat'
Plug 'https://github.com/McSinyx/vim-octave.git', {'for': 'octave'}
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
" Plug 'itchyny/lightline.vim'
" Plug 'mengelbrecht/lightline-bufferline'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" Plug 'vimlab/split-term.vim'
Plug 'junegunn/limelight.vim'
"
"Colourschemes
Plug 'colepeters/spacemacs-theme.vim'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'morhetz/gruvbox'
Plug 'ayu-theme/ayu-vim'
Plug 'drewtempelmeyer/palenight.vim'

syntax on
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
	Plug 'vim-syntastic/syntastic'
	Plug 'glacambre/firenvim'
	Plug 'matze/vim-move'
	" Plug 'vim-latex/vim-latex'
	Plug 'LaTeX-Box-Team/LaTeX-Box'
	Plug 'flazz/vim-colorschemes'
	Plug 'francoiscabrol/ranger.vim'
	Plug 'junegunn/goyo.vim'
	Plug 'junegunn/limelight.vim'
	Plug 'junegunn/vim-easy-align'
	Plug 'kien/rainbow_parentheses.vim'
	Plug 'morhetz/gruvbox'
	Plug 'preservim/nerdtree'
	Plug 'tpope/vim-commentary'
	Plug 'tpope/vim-surround'
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
	Plug 'vimlab/split-term.vim'
call plug#end()


"remove trailing whitespace on save
autocmd BufWritePre * %s/\s\+$//e
augroup autodetect
  autocmd!
  autocmd BufRead,BufNewFile *.tex set filetype=tex
  " autocmd BufRead,BufnewFile *.tex source ~/.vim/after/syntax/tex/old.vim
augroup END

"open templates for some file types
if has("autocmd")
  augroup templates
    " autocmd BufNewFile *.tex 0r ~/.vim/templates/textemp.tex
    autocmd BufNewFile *.cpp 0r ~/.vim/templates/cpptemp.cpp
  augroup END
endif
" autocmd filetype tex source ~/.vim/after/syntax/tex/old.vim
if &compatible
  set nocompatible
endif

colorscheme gruvbox

 " Syntax checking
 set statusline+=%#warningmsg#
 set statusline+=%{SyntasticStatuslineFlag()}
 set statusline+=%*

 let g:syntastic_always_populate_loc_list = 1
 let g:syntastic_auto_loc_list = 1
 let g:syntastic_check_on_open = 1
 let g:syntastic_check_on_wq = 0

" General remappings
	map <C-n> :NERDTreeToggle<CR>
	let g:move_key_modifier = 'C'
	map <C-g> :Goyo<enter>
	nnoremap <Tab> gt
	nnoremap <Space> <C-w>w

	noremap <silent> <C-Left> :vertical resize +3<CR>
	noremap <silent> <C-Right> :vertical resize -3<CR>
	noremap <silent> <C-Up> :resize -3<CR>
	noremap <silent> <C-Down> :resize +3<CR>

	map <Leader>th <C-w>t<C-w>H
	map <Leader>tk <C-w>t<C-w>K



"LaTeX
	autocmd filetype tex call TexNewMathZone("E","align*",1)
	autocmd filetype tex call TexNewMathZone("E","align",1)
	autocmd filetype tex call TexNewMathZone("E","array",1)

	"General
	autocmd FileType tex inoremap ;en \begin{enumerate}<Enter><Enter>\end{enumerate}<Enter><Enter><++> <Esc>3kA\item<Space>
	autocmd FileType tex inoremap ;itm \begin{itemize}<Enter><Enter>\end{itemize}<Enter><Enter><++> <Esc>3kA\item<Space>
	autocmd FileType tex inoremap ;it <Esc>o\item<Space>
	autocmd FileType tex inoremap ;l <Esc>/<++><Enter>vf>xi
	autocmd FileType tex nnoremap ;l /<++><Enter>vf>xi
	autocmd FileType tex inoremap ;tit \textit{}<++> <Esc>T{i
	autocmd FileType tex inoremap ;tbf \textbf{}<++> <Esc>T{i
	autocmd FileType tex inoremap ;cite \cite{}<++> <Esc>T{i<C-x><C-o>
	autocmd FileType tex inoremap ;ref \ref{}<++> <Esc>T{i<C-x><C-o>
	autocmd FileType tex inoremap ;sec \section{??}<Enter><++><Esc>kf??li<Backspace>
	autocmd FileType tex inoremap ;ssec \subsection{??}<Enter><++><Esc>kf??li<Backspace>
	autocmd FileType tex inoremap ;sssec \subsubsection{??}<Enter><++><Esc>kf??li<Backspace>
	autocmd FileType tex inoremap ;env \begin{}<Enter>\end{}<Enter><++><Esc>k^i<Space><Space><Esc>f{<C-v>kA

	"Navigation
	autocmd FileType tex nnoremap ,be /begin{document}<Enter>j
	autocmd FileType tex nnoremap ,cmd /%commands<Enter>
	autocmd FileType tex nnoremap ,ncmd /%commands<Enter> o \newcommand{\}[<++>]{<++>}<Esc>T\i
	autocmd FileType tex nnoremap ,rncmd /%commands<Enter> o \renewcommand{\}[<++>]{<++>}<Esc>T\i
	autocmd FileType tex nnoremap ,up 9gg<Enter>o\usepackage{}<Esc>i

	"Maths
	autocmd FileType tex syntax on
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
	autocmd FileType tex inoremap ;al \begin{align*}<Enter><Enter>\end{align*}<Enter><++> <Esc>2kA<Space><Tab>
	autocmd FileType tex inoremap ;egn \begin{equation}<Enter><Enter>\end{equation}<Enter><++> <Esc>2kA<Space><Tab>
	autocmd FileType tex inoremap ;eqn \begin{equation}<Enter><Enter>\end{equation}<Enter><++> <Esc>2kA<Space><Tab>
	autocmd FileType tex inoremap ;prt \frac{\partial ??}{partial <++>} <++> <Esc>F??a<Backspace>
	autocmd FileType tex inoremap ;ra \Rightarrow
	autocmd FileType tex inoremap ;Ra \Longrightarrow
	autocmd FileType tex inoremap ;thus \therefore
	autocmd FileType tex inoremap ;la \Leftarrow
	autocmd FileType tex inoremap ;lra \Leftrightarrow
	autocmd FileType tex inoremap ;Lra \Longleftrightarrow
	autocmd FileType tex inoremap ;rp \rightarrow
	autocmd FileType tex inoremap ;appr \approx
	autocmd FileType tex inoremap :eqv \equiv
	autocmd FileType tex inoremap ;thm \begin{theorem}[] <Enter><++> <Enter>\end{theorem}<Enter><++> <Esc>3kf[a
	autocmd FileType tex inoremap ;cor \begin{corollary}[] <Enter><++> <Enter>\end{corollary}<Enter><++> <Esc>3kf[a
	autocmd FileType tex inoremap ;mma \begin{lemma}[] <Enter><++> <Enter>\end{lemma}<Enter><++> <Esc>3kf[a
	autocmd FileType tex inoremap ;df \begin{definition}[] <Enter><++> <Enter>\end{definition}<Enter><++> <Esc>3kf[a
	autocmd FileType tex inoremap ;prf \begin{proof} <Enter>?? <Enter>\end{proof}<Enter><++> <Esc>2k^a<Backspace>
	autocmd FileType tex inoremap ;arr \begin{array}{DUMMYTEXT} <Enter><++> <Enter>\end{array}<Enter><++> <Esc>?DUMMYTEXT<Enter>di{i
	autocmd FileType tex inoremap ;mtr \begin{bmatrix}<Enter>blargh<Enter>\end{bmatrix}<Enter><++> <Esc>?blargh<Enter>Di
	autocmd FileType tex inoremap ;det \begin{vmatrix}<Enter>blargh<Enter>\end{vmatrix}<Enter><++> <Esc>?blargh<Enter>Di
	autocmd FileType tex inoremap ;sqrt \sqrt{}<++> <Esc>T{i
	autocmd FileType tex inoremap ;root \sqrt[]{ <++> }<++> <Esc>T[i
	autocmd FileType tex inoremap ;mthr \mathbb{R}
	autocmd FileType tex inoremap ;mthz \mathbb{Z}
	autocmd FileType tex inoremap ;mthn \mathbb{N}
	autocmd FileType tex inoremap ;mthc \mathbb{C}
	autocmd FileType tex inoremap ;mthq \mathbb{Q}
	autocmd FileType tex inoremap ;prb \mathbb{P}\left(??\right)<++> <Esc>T??i<Backspace>
	autocmd FileType tex inoremap ;pre \mathbb{E}\left(??\right)<++> <Esc>T??i<Backspace>
	autocmd FileType tex inoremap ;tex \text{ ?? } <++> <Esc>T??i<Backspace>
	autocmd FileType tex inoremap ;inv ^{-\!1}<Space>
	autocmd FileType tex inoremap ;ep \upvarepsilon
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
	autocmd FileType tex inoremap ;set \left\{ ?? \mid <++> \right\} <++> <Esc>F??a<Backspace>
	autocmd FileType tex inoremap ;O \mathcal{O}() <++> <Esc>F)i
	autocmd FileType tex inoremap ;mc \mathcal{}() <++> <Esc>F{a
	autocmd FileType tex inoremap ;cas \begin{dcases}<Enter>??<Enter>\end{dcases}<Enter><++> <Esc>2k^a<Backspace>
	autocmd FileType tex inoremap ;abs \left\vert ?? \right\vert <++> <Esc>T??i<Backspace>
	autocmd FileType tex inoremap ;( \left( \right)<++> <Esc>T(i
	autocmd FileType tex inoremap ;[ \left[ \right]<++> <Esc>T[i
	autocmd FileType tex inoremap ;{ \left\{ \right\}<++> <Esc>T{i
	autocmd FileType tex inoremap ;ipr \left\langle ?? \right\rangle <++> <Esc>T??i<Backspace>
	autocmd FileType tex inoremap ;ceil \left\lceil ?? \right\rceil <++> <Esc>T??i<Backspace>
	autocmd FileType tex inoremap ;floor \left\lfloor ?? \right\rfloor <++> <Esc>T??i<Backspace>
	autocmd FileType tex inoremap ;nrm \left\Vert ?? \right\Vert <++> <Esc>T??i<Backspace>
	autocmd FileType tex inoremap ;log \ln\left(\right) <++> <Esc>F(a
	autocmd FileType tex inoremap ;exp e^{} <++> <Esc>F{a
	autocmd FileType tex inoremap ;int \int\limits_{??}^{<++> }<++> \,\mathrm{d}<++> <Esc>T??i<Backspace>
	autocmd FileType tex inoremap ;iint \iint\limits_{??}^{<++> }<++> \,\mathrm{d}<++> \,\mathrm{d}<++> <Esc>T??i<Backspace>
	autocmd FileType tex inoremap ;iiint \iint\limits_{??}^{<++> }<++> \,\mathrm{d}<++> \,\mathrm{d}<++> \,\mathrm{d}<++> <Esc>T??i<Backspace>
	autocmd FileType tex inoremap ;oint \oint_{??} <++> \,\mathrm{d}<++> <Esc>T??i<Backspace>
	autocmd FileType tex inoremap ;ooint \ooint_{??} <++> \,\mathrm{d}<++> \,\mathrm{d}<++> <Esc>T??i<Backspace>
	autocmd FileType tex inoremap ;div \frac{\mathrm{d}??}{\mathrm{d}<++> }<++> <Esc>T??i<Backspace>
	autocmd FileType tex inoremap ;frc \frac{??}{<++> }<++> <Esc>T??i<Backspace>
	autocmd FileType tex inoremap ;tm $??$<++> <Esc>T??i<Backspace>
	autocmd FileType tex inoremap ;sum \sum_{??}^{<++>} <++> <Esc>T??i<Backspace>
	autocmd FileType tex inoremap ;prod \prod_{??}^{<++>} <++> <Esc>T??i<Backspace>
	autocmd FileType tex inoremap ;bar \bar{??} <++> <Esc>T??i<Backspace>
	autocmd FileType tex inoremap ;dot \dot{??} <++> <Esc>T??i<Backspace>
	autocmd FileType tex inoremap ;tld \tilde{??} <++> <Esc>T??i<Backspace>
	autocmd FileType tex inoremap ;lim \lim_{??\rightarrow <++> } <++> <Esc>T??i<Backspace>
	autocmd FileType tex inoremap ;inf \infty
	autocmd FileType tex inoremap ;quad \frac{-?? \pm \sqrt{<++>^2 - 4<++>\cdot<++>}}{2\cdot<++>} <Esc>T??i<Backspace>
	autocmd FileType tex inoremap ;mtc \mathcal{??}<++> <Esc>T??i<Backspace>
	autocmd FileType tex inoremap ;_ _{} <++> <Esc>F{a
	autocmd FileType tex inoremap ;s _{} <++> <Esc>F{a
	autocmd FileType tex inoremap ;^ ^{} <++> <Esc>F{a
	autocmd FileType tex inoremap ;S ^{} <++> <Esc>F{a

"Python
	autocmd FileType python inoremap ;int int(??)<++><Esc>F??li<Backspace>
	autocmd FileType python inoremap ;l <Esc>/<++><Enter>da<i
	autocmd FileType python inoremap ;str str(??)<++><Esc>F??li<Backspace>
	autocmd Filetype python inoremap ;for for ?? in <++>:<Enter><Tab><++> <Esc>k^f??li<Backspace>
	autocmd Filetype python inoremap ;if if ??:<Enter><Tab><++> <Esc>k^f??li<Backspace>
	autocmd Filetype python inoremap ;var ??= <++> <Enter><++> <Esc>k/??<Enter>li<Backspace>
	autocmd Filetype python inoremap ;whi while ??:<Enter><Tab><++> <Esc>k^f??li<Backspace>
	autocmd Filetype python nnoremap ,imp gg O from ?? import <++> <Esc>???<Enter>li<Backspace>

"C++
	autocmd FileType cpp inoremap ,l <Esc>/<++><Enter>vf>xi
	autocmd FileType cpp inoremap \for for(int ?? = <++> ; <++> ; <++> ){<Enter><++> ; <Enter>}<++> <Esc>2k^f??a<Backspace>
	autocmd FileType cpp inoremap \if if(??){<Enter><++> ;<Enter>}<Enter><++> ;<Esc>3k^f??a<Backspace>
	autocmd FileType cpp inoremap \nl <Esc>$i<Enter>;<Esc>i
	autocmd FileType cpp inoremap \np <Esc>0ggO ?? (<++>){<Enter> <++> ; <Enter> }<Esc>0gg^a<Backspace>
	autocmd FileType cpp inoremap \nv ??=<++> ;<Esc>T??i<Backspace>
	autocmd FileType cpp inoremap \while while(??){<Enter><++> <Enter>}<Enter><++> ;<Esc>3k^f??a<Backspace>
	autocmd FileType cpp nnoremap \ma /int main()<Enter>j^
	autocmd FileType cpp nnoremap \np 0ggO ?? (<++>){<Enter> <++> ; <Enter> }<Esc>0gg^a<Backspace>
	autocmd Filetype cpp inoremap \in <Esc>ggO#include<>T<i
