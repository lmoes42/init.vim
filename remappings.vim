nno Y y$
nno Q @@
nno <silent> <leader>av :tabnew ~/.config/nvim/init.vim<CR>
nno <silent> <leader>az :tabnew ~/.zshrc<CR>
nno <silent> <leader>ay :tabnew ~/.yabairc<CR>
nno <silent> <leader>as :tabnew ~/.skhdrc<CR>
nno <silent> <leader>ab :tabnew ~/.spacebarrc<CR>
nno ` <c-^>
command! Set edit ~/.config/nvim/init.vim
command! Settings edit ~/.config/nvim/init.vim
map <C-n> :NERDTreeToggle<CR>
let g:move_key_modifier = 'C'
map <silent> <C-g> :Goyo<enter>
command! L Limelight!!
command! W w
command! Q q
autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!

nno <esc> <C-w>
nno <Space> <C-w>w
nno <C-w>l :vspl<cr>

nno <silent> <C-Left> :vertical resize +3<CR>
nno <silent> <C-Right> :vertical resize -3<CR>
nno <silent> <C-Up> :resize -3<CR>
nno <silent> <C-Down> :resize +3<CR>

map <Leader>v <C-w>t<C-w>H
map <Leader>h <C-w>t<C-w>K
map <silent> <Leader>o :only<cr>
nno <silent> <Leader>s :vsp<cr>
nno <Leader>t :VT<cr>i
nno <Leader>T :HT<cr>i
nno <Leader>r :R<cr>
" nno <Leader><Leader>e :e<space>
" nno <Leader><Leader>s :vsp<cr>:Files<cr>
" nno <Leader><Leader>S :vsp<cr>:e<space>
" nno <Leader>l g_
" nno <Leader>a ^
nno § gt

ino <C-A> <C-O>yiW<End>=<C-R>=<C-R>0<CR>

fun Toggle_numbers()
        set invrelativenumber
        set invnumber
endfun
nno <silent> <leader>q :call Toggle_numbers()<cr>
nno S %

" Delete while keeping registers
nnoremap <leader>d "_d
nnoremap <leader>D "_d$
vnoremap <leader>p "_dP
nnoremap <leader>c "_c
nnoremap <leader>C "_c$
nno <leader><leader> <c-^>

" quickfix
nno <leader>j :cp<cr>
nno <leader>k :cn<cr>
nno <leader>o :copen<cr>
nno <leader>gr :vimgrep<c-f>a<space>

ino <c-]> <c-X><c-]>
ino <c-F> <c-X><c-F>
ino <c-D> <c-X><c-D>
ino <c-L> <c-X><c-L>

" keep cursor centred
nnoremap n nzzzV
nnoremap N NzzzV
" nnoremap J mzJ`z


" Better undo
ino , ,<c-g>u
ino ; ;<c-g>u
ino ' '<c-g>u
ino " "<c-g>u
ino ` `<c-g>u
ino . .<c-g>u
ino ! !<c-g>u
ino ? ?<c-g>u
ino ] ]<c-g>u
ino [ [<c-g>u
ino ( (<c-g>u
ino ) )<c-g>u
ino { {<c-g>u
ino } }<c-g>u
ino < <<c-g>u
ino > ><c-g>u

" Jumplist
nnoremap <expr> k (v:count > 5 ? "m'" . v:count : "") . 'k'
nnoremap <expr> j (v:count > 5 ? "m'" . v:count : "") . 'j'
