" Snippets are handled
" by ultisnips
let g:tex_flavor = 'latex'
let g:latex_view_general_viewer = 'skim'
let g:vimtex_view_method = 'skim'
set conceallevel=2
let g:tex_conceal='abdmg'
let g:tex_superscripts= "[0-9a-zA-W.,:;+-<>/()=]"
let g:tex_subscripts= "[0-9aehijklmnoprstuvx,+-/().]"
let g:tex_fast='bcmMprsSvV'
let g:tex_conceal_frac=1

hi link texMathZoneG texMathZoneEnv
hi link texMathZoneGS texMathZoneEnvStarred
hi link texMathZoneW texMathZone
hi link texMathZoneX texMathZoneX
hi link texMathZoneZ texMathZoneEnsured
hi link texMathZoneY texMathZoneXX

hi link texStatement texCmd

autocmd filetype tex so ~/.config/nvim/latexremaps.vim


let g:vimtex_compiler_latexmk = {
                        \ 'build_dir' : '',
                        \ 'callback' : 1,
                        \ 'continuous' : 1,
                        \ 'executable' : 'latexmk',
                        \ 'hooks' : [],
                        \ 'options' : [
                        \   '-verbose',
                        \   '-file-line-error',
                        \   '-synctex=1',
                        \   '-interaction=nonstopmode',
                        \ ],
                        \}
let g:vimtex_toc_config = {
      \'split_width': 20,
      \'show_help' : 0,
      \}

" let g:vimtex_quickfix_enabled = 0
" let g:vimtex_quickfix_enabled = 0
" let g:Tex_ShowErrorContext = 0
" let g:Tex_IgnoredWarnings = {
"                   \'unmatched "}"'
"                   \}

" autocmd filetype tex ino ;t \mathcal{T}
" autocmd filetype tex ino ;r \mathbb{R}
" autocmd filetype tex ino ;c \mathbb{C}
" autocmd filetype tex ino ;q \mathbb{Q}
" autocmd filetype tex ino ;z \mathbb{Z}
" autocmd filetype tex ino ;n \mathbb{N}
" autocmd filetype tex ino ;f \mathbb{F}
" autocmd filetype tex ino ;k \mathbb{K}
" autocmd filetype tex ino ;x \mathfrak{X}
" autocmd filetype tex ino `^ \wedge
" autocmd filetype tex ino ;w \wedge
" autocmd filetype tex ino ;d \mathrm{d}
" autocmd filetype tex ino `N \nabla
" autocmd filetype tex ino ;i \iff
" autocmd filetype tex ino ~ \sim
" Fix highlighting in MathZones (for LaTeX box)
" autocmd filetype tex call TexNewMathZone("E","align*",1)
" autocmd filetype tex call TexNewMathZone("E","align",1)
" autocmd filetype tex call TexNewMathZone("E","array",1)
