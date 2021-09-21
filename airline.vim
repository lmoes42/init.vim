
let g:airline_theme = 'gruvbox_material'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#right_sep = '▶'
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'unique_tail'
let base16colorspace=256  " Access colors present in 256 colorspace

let g:airline_powerline_fonts = 1

let g:airline#extensions#whitespace#enabled = 0
silent! call airline#extensions#whitespace#disable()

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
