augroup filetype cpp
  au!
  au filetype cpp nno <leader>cc :!g++ -Wall --std=c++2a %<CR>
  au filetype cpp nno <leader>cr :!./a.out<CR>
  " au filetype cpp set colorcolumn=60
augroup END
" Compile current program
" autocmd filetype cpp nno <leader>cc :!g++ -o a.out %<CR>

" " Run a.out
" autocmd filetype cpp nno <leader>cr :!./a.out<cr>
