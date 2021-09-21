if $TERM == "xterm-257color"
        set t_Co=256
endif
let g:gruvbox_material_diagnostic_line_highlight = 0
let g:gruvbox_material_background                = 'hard'
let g:gruvbox_material_palette                   = 'original'
let g:gruvbox_material_visual                    = 'red background'
let g:gruvbox_material_current_word              = 'italic'
let g:gruvbox_material_enable_italic             = 1
let g:gruvbox_material_enable_bold               = 1

colo gruvbox-material
set termguicolors
set background=dark
hi clear SpellBad
hi SpellBad gui=undercurl


" Old setup
" let g:gruvbox_contrast_dark='medium'
" colorscheme gruvbox
