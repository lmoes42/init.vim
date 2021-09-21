set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
" command! Synt SyntasticToggleMode
" autocmd filetype tex Synt
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list            = 1
let g:syntastic_check_on_open            = 0
let g:syntastic_check_on_wq              = 0
" LaTeX
let g:syntastic_disabled_filetypes=['tex']
let g:syntastic_tex_chktex_showmsgs = 0
let g:syntastic_tex_checkers = ['lacheck']
"Python
" let g:syntastic_python_python_exec = 'python3'
" let g:syntastic_python_checkers = ['python']
let g:syntastic_mode_map = {
    \ "mode": "active",
    \ "passive_filetypes": ["tex", "python"] }
