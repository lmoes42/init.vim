augroup autodetect
  autocmd!
	autocmd BufRead,BufNewFile *.tex     set filetype=tex
	autocmd BufNewFile *.cpp 				     set filetype=cpp
	autocmd BufRead,BufNewFile *.m,*.oct set filetype=octave
	autocmd filetype mma                 set filetype=octave
augroup END
autocmd FileType octave setlocal commentstring=%\ %s
