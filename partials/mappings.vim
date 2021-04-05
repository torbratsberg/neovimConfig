" Keyboards should have escape key on home row
imap fj <Esc>

" Enter to select first or selected from completion menu
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
            \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Coc commands
xmap <leader>cf  <Plug>(coc-format-selected)
nmap <leader>cf  <Plug>(coc-format-selected)
nmap <leader>cd <Plug>(coc-definition)
nmap <leader>cr <Plug>(coc-references)
nmap <leader>cn  <Plug>(coc-rename)
nmap <leader>cp  :<C-u>CocList diagnostics<cr>
nmap <leader>co  :<C-u>CocList outline<cr>

" Add characters
nmap <leader>qd ciw""<esc>P
nmap <leader>qs ciw''<esc>P
nmap <leader>; A;<esc>
nmap <leader>, A,<esc>

" Leader misc commands
nmap <leader>c :source ~/.config/nvim/init.vim<cr>
map <Leader>nn :e ~/.vim/notes<cr>
map <Leader>w :w<cr>

" Git commands
map <Leader>gs :G<cr>
map <Leader>gc :Git commit<cr>
map <Leader>gg :Git pull<cr>
map <Leader>gp :Git push<cr>
map <Leader>gl :Commits<cr>
map <Leader>gbl :Git blame<cr>
map <Leader>gbr :Git branch<cr>
map <Leader>gr :Git remote<cr>
map <Leader>gd :Gdiffsplit<cr>
map <Leader>g<Left> :diffget //2<cr>
map <Leader>g<Right> :diffget //3<cr>

" Looking up stuff commands
nmap <leader>f :Telescope find_files<cr>
nmap <leader>b :Telescope buffers<cr>
nmap <leader>r :Telescope live_grep<cr>

" In file finding
nmap gs /
map <Leader><Leader> <Plug>(easymotion-bd-f)
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)

" Easier movement between splits
nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l

" Control misc commands
" √ = Alt + j & ª = Alt + k
map ª :move-2<cr>
map √ :move+1<cr>
vmap < < gv
vmap > > gv
vmap <esc> <C-c>
nnoremap <silent> , @=(foldlevel('.')?'za':"\<Space>")<cr>
vnoremap , zf
nmap <tab><tab> <C-6>
nmap <C-c> :e ~/.config/nvim/init.vim<cr>
nmap <C-s> :%s///<Left><Left>

" Character completion
imap (<Tab> ()<Left>
imap [<Tab> []<Left>
imap {<Tab> {}<Left>
imap '<Tab> ''<Left>
imap "<Tab> ""<Left>
imap `<Tab> ``<Left>
inoremap {<cr> {<cr>}<ESC>O

" Quickfix
nmap <Leader>h :cprev<cr>
nmap <Leader>l :cnext<cr>
nmap <Leader>qf :copen<cr>

" Fix for a problem I had
map gx <nop>
