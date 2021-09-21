if has("autocmd")
  augroup templates
    " autocmd BufNewFile *.cpp 0r ~/Documents/Code/C++/temp.cpp
    autocmd BufNewFile *.c 0r ~/Documents/Code/c/template.c
augroup END
endif
