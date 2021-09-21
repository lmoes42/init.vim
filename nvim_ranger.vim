let g:ranger_map_keys = 0
fun! s:toggle_ranger()
        vsp | Ranger
        set nospell
        set nonumber
        set norelativenumber
endfun
command! R call s:toggle_ranger()
