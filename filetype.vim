augroup autodetect
  autocmd!
	autocmd BufRead,BufNewFile *.tex set filetype=tex
	autocmd BufNewFile *.cpp set filetype=cpp
	autocmd BufNewFile *.cc set filetype=cpp
	autocmd BufRead,BufNewFile *.m,*.oct setlocal filetype=octave
augroup END
