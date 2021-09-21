let g:lightline = {
      \ 'colorscheme': 'gruvbox_material',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ],
      \   'right' : [ ['lineinfo'], ['fileencoding'], ['filetype' ], [ 'fileformat']]
      \ },
      \ 'inactive': {
      \ 'right': [ [ 'lineinfo' ], ['readonly'], ['percent'] ]
      \},
      \ 'component_function': {
      \   'gitbranch': 'FugitiveHead'
      \ },
      \ }
