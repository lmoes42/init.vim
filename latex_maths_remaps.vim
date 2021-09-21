"General
ino \en \begin{enumerate}<Enter><Enter>\end{enumerate}<Enter><Enter><++> <Esc>3kA\item<Space>
ino \itm \begin{itemize}<Enter><Enter>\end{itemize}<Enter><Enter><++> <Esc>3kA\item<Space>
ino \it <Esc>o\item<Space>
ino \l <Esc>/<++><Enter>vf>xi
nno \l /<++><Enter>vf>xi
ino \tit \textit{}<++> <Esc>T{i
ino \tbf \textbf{}<++> <Esc>T{i
ino \cite \cite{}<++> <Esc>T{i<C-x><C-o>
ino \ref \ref{}<++> <Esc>T{i<C-x><C-o>
ino \sec \section{±}<Enter><++><Esc>kf±li<Backspace>
ino \ssec \subsection{±}<Enter><++><Esc>kf±li<Backspace>
ino \sssec \subsubsection{±}<Enter><++><Esc>kf±li<Backspace>
ino \env \begin{}<Enter>\end{}<Enter><++><Esc>k^i<Space><Space><Esc>f{<C-v>kA

"Maths
ino <C-A> <C-O>yiW<End>=<C-R>=<C-R>0<CR>
ino \mbf \mathbf{}<++> <Esc>T{i
ino \mbb \mathbb{} <++> <Esc>F{a
ino \chse \binom{}{<++>} <++> <Esc>Fmla
ino \tr ^\mathsf{T}
ino \hrm ^\mathsf{H}
ino \empt \emptyset
ino \max \max_{ }\left{ <++> \right} <++> <Esc>T{;i
ino \min \min_{ }\left{ <++> \right} <++> <Esc>T{;i
ino \sup \sup_{ }\left{ <++> \right} <++> <Esc>T{;i
ino \infi \inf_{ }\left{ <++> \right} <++> <Esc>T{;i
ino \dmo <Esc>/%commands<Enter>o\DeclareMathOperator{\}{ <++> }<Esc>T\i
ino \lpl \mathcal{L}\left\{\right\} <++> <Esc>F{a
ino \al \begin{align*}<Enter><Enter>\end{align*}<Enter><++> <Esc>2kcc
"  ino \al \begin{align*}<Enter><Enter>\end{align*}<Enter><++> <Esc>2kA<Space><Tab>
ino \egn \begin{equation}<Enter><Enter>\end{equation}<Enter><++> <Esc>2kA<Space><Tab>
ino \eqn \begin{equation}<Enter><Enter>\end{equation}<Enter><++> <Esc>2kA<Space><Tab>
ino \prt \frac{\partial ±}{partial <++>} <++> <Esc>F±a<Backspace>
ino \bnd \partial
ino \ra \Rightarrow
ino \Ra \Longrightarrow
ino \thus \therefore
ino \la \Leftarrow
ino \lra \Leftrightarrow
ino \Lra \Longleftrightarrow
ino \rp \rightarrow
ino \appr \approx
ino \eqv \equiv
ino \iso \cong
ino :in \in
ino \thm \begin{theorem}[] <Enter><++> <Enter>\end{theorem}<Enter><++> <Esc>3kf[a
ino \cor \begin{corollary}[] <Enter><++> <Enter>\end{corollary}<Enter><++> <Esc>3kf[a
ino \mma \begin{lemma}[] <Enter><++> <Enter>\end{lemma}<Enter><++> <Esc>3kf[a
ino \df \begin{definition}[] <Enter><++> <Enter>\end{definition}<Enter><++> <Esc>3kf[a
ino \prf \begin{proof} <Enter>± <Enter>\end{proof}<Enter><++> <Esc>2k^a<Backspace>
ino \arr \begin{array}{DUMMYTEXT} <Enter><++> <Enter>\end{array}<Enter><++> <Esc>?DUMMYTEXT<Enter>di{i
ino \mtr \begin{bmatrix}<Enter><Enter>\end{bmatrix}<Enter><++> <Esc>2kcc<C-t>
"  ino \mtr \begin{bmatrix}<Enter>blargh<Enter>\end{bmatrix}<Enter><++> <Esc>?blargh<Enter>Di
ino \det \begin{vmatrix}<Enter>blargh<Enter>\end{vmatrix}<Enter><++> <Esc>?blargh<Enter>Di
ino \sqrt \sqrt{}<++> <Esc>T{i
ino \root \sqrt[]{ <++> }<++> <Esc>T[i
ino \mthr \mathbb{R}
ino \mthz \mathbb{Z}
ino \mthn \mathbb{N}
ino \mthc \mathbb{C}
ino \mthq \mathbb{Q}
ino \prb \mathbb{P}\left(±\right)<++> <Esc>T±i<Backspace>
ino \pre \mathbb{E}\left(±\right)<++> <Esc>T±i<Backspace>
ino \tex \text{ ± } <++> <Esc>T±i<Backspace>
ino \inv ^{-\!1}<Space>
ino \ep \upvarepsilon
ino \ball B_{}^{<++>} \left( <++> \right) <++> <Esc>T_a
ino \metr d_{} \left( <++>, <++> \right) <++> <Esc>T_a
ino \subs \subseteq
ino \ssubs \subset
ino \sups \supseteq
ino \ssups \supset
ino \intr \bigcap_{}^{ <++> } <Esc>T_a
ino \union \bigcup_{}^{ <++> } <Esc>T_a
ino \sgm \sigma
ino \Sgm \Sigma
ino \alp \alpha
ino \bet \beta
ino \pi \pi
ino \tau \tau
ino \lmd \lambda
ino \gam \gamma
ino \the \theta
ino \The \Theta
ino \fa \forall
ino \exi \exists
ino \de \delta
ino \De \Delta
ino \ze \zeta
ino \nbl \nabla
ino \x \times
ino \d \cdot
ino \set \left\{ ± \mid <++> \right\} <++> <Esc>F±a<Backspace>
ino \O \mathcal{O}() <++> <Esc>F)i
ino \mc \mathcal{}() <++> <Esc>F{a
ino \cas \begin{dcases}<Enter>±<Enter>\end{dcases}<Enter><++> <Esc>2k^a<Backspace>
ino \abs \left\vert ± \right\vert <++> <Esc>T±i<Backspace>
ino \< \left< ± \right> <++> <Esc>F±xi
ino \( \left( \right)<++> <Esc>T(i
ino \[ \left[ \right]<++> <Esc>T[i
ino \{ \left\{ \right\}<++> <Esc>T{i
ino \ipr \left\langle ± \right\rangle <++> <Esc>T±i<Backspace>
ino \ceil \left\lceil ± \right\rceil <++> <Esc>T±i<Backspace>
ino \floor \left\lfloor ± \right\rfloor <++> <Esc>T±i<Backspace>
ino \nrm \left\Vert ± \right\Vert <++> <Esc>T±i<Backspace>
ino \log \ln\left(\right) <++> <Esc>F(a
ino \exp e^{} <++> <Esc>F{a
ino \inz \in\mathbb{Z}
ino \int \int\limits_{±}^{<++> }<++> \,\mathrm{d}<++> <Esc>T±i<Backspace>
ino \iint \iint\limits_{±}^{<++> }<++> \,\mathrm{d}<++> \,\mathrm{d}<++> <Esc>T±i<Backspace>
ino \iiint \iiint\limits_{±}^{<++> }<++> \,\mathrm{d}<++> \,\mathrm{d}<++> \,\mathrm{d}<++> <Esc>T±i<Backspace>
ino \oint \oint_{±} <++> \,\mathrm{d}<++> <Esc>T±i<Backspace>
ino \ooint \ooint_{±} <++> \,\mathrm{d}<++> \,\mathrm{d}<++> <Esc>T±i<Backspace>
ino \div \frac{\mathrm{d}±}{\mathrm{d}<++> }<++> <Esc>T±i<Backspace>
ino \frc \frac{±}{<++> }<++> <Esc>T±i<Backspace>
ino \tm $±$<++> <Esc>T±i<Backspace>
ino \sum \sum_{±}^{<++>} <++> <Esc>T±i<Backspace>
ino \prod \prod_{±}^{<++>} <++> <Esc>T±i<Backspace>
ino \bar \bar{±} <++> <Esc>T±i<Backspace>
ino \circ \mathring{±} <++> <Esc>T±i<Backspace>
ino \dot \dot{±} <++> <Esc>T±i<Backspace>
ino \tld \tilde{±} <++> <Esc>T±i<Backspace>
ino \lim \lim_{±\rightarrow <++> } <++> <Esc>T±i<Backspace>
ino \inf \infty
ino \quad \frac{-± \pm \sqrt{<++>^2 - 4<++>\cdot<++>}}{2\cdot<++>} <Esc>T±i<Backspace>
ino \mtc \mathcal{±}<++> <Esc>T±i<Backspace>
ino \_ _{} <++> <Esc>F{a
ino \s _{} <++> <Esc>F{a
ino \^ ^{} <++> <Esc>F{a
ino \S ^{} <++> <Esc>F{a
