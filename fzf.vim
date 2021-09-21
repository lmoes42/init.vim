nno <C-p> :Files<Enter>
nno <F4> :Colors<Enter>
" nno <Tab> :Buffers<Enter>
nno <C-b> :Buffers<Enter>
nno <leader>h :His<CR>
nno <F2> :His<CR>
nno <leader>/ :Lines<Enter>



" Always enable preview window on the right with 60% width
let g:fzf_preview_window = 'right:60%'

" Preview window
let g:fzf_layout = { 'window' : {'width' : 0.8, 'height': 0.8 } }
let $FZF_DEFAULT_OPTS='--reverse'

let g:fzf_colors =
                        \ { 'fg':      ['fg', 'Normal'],
                        \ 'bg':      ['bg', 'Normal'],
                        \ 'hl':      ['fg', 'Comment'],
                        \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
                        \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
                        \ 'hl+':     ['fg', 'Statement'],
                        \ 'info':    ['fg', 'PreProc'],
                        \ 'border':  ['fg', 'Ignore'],
                        \ 'prompt':  ['fg', 'Conditional'],
                        \ 'pointer': ['fg', 'Exception'],
                        \ 'marker':  ['fg', 'Keyword'],
                        \ 'spinner': ['fg', 'Label'],
                        \ 'header':  ['fg', 'Comment'] }
" let g:fzf_colors =
" \ { "fg":      ["fg", "Normal"],
"   \ "bg":      ["bg", "Normal"],
"   \ "hl":      ["fg", "IncSearch"],
"   \ "fg+":     ["fg", "CursorLine", "CursorColumn", "Normal"],
"   \ "bg+":     ["bg", "CursorLine", "CursorColumn"],
"   \ "hl+":     ["fg", "IncSearch"],
"   \ "info":    ["fg", "IncSearch"],
"   \ "border":  ["fg", "Ignore"],
"   \ "prompt":  ["fg", "Comment"],
"   \ "pointer": ["fg", "IncSearch"],
"   \ "marker":  ["fg", "IncSearch"],
"   \ "spinner": ["fg", "IncSearch"],
"   \ "header":  ["fg", "WildMenu"] }

