augroup filetype c
  au!
  au filetype c nno <leader>cc :!gcc -Wall %<CR>
  au filetype c nno <leader>cr :!./a.out<CR>
  " au filetype c set colorcolumn=60
augroup END
