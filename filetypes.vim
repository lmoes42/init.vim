augroup autodetect
  autocmd!
	autocmd BufRead,BufNewFile *.tex set filetype=tex
	autocmd BufNewFile *.cpp set filetype=cpp
	autocmd BufRead,BufNewFile *.m,*.oct set filetype=octave
augroup END
