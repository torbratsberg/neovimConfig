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
map <leader>nn :e ~/.vim/notes<cr>
nmap <leader>w :w<cr>
nmap <leader>s :%s///<Left><Left>

" Git commands
nmap <leader>gs :G<cr>
nmap <leader>gc :Git commit<cr>
nmap <leader>gg :Git pull<cr>
nmap <leader>gp :Git push<cr>
nmap <leader>gl :Telescope git_commits<cr>
nmap <leader>gbl :Git blame<cr>
nmap <leader>gbr :Git branch<cr>
nmap <leader>gr :Git remote<cr>
nmap <leader>gd :Gdiffsplit<cr>
nmap <leader>g<left> :diffget //2<cr>
nmap <leader>g<Right> :diffget //3<cr>

" Looking up stuff commands
nmap <leader>f :Telescope find_files<cr>
nmap <leader>b :Telescope buffers<cr>
nmap <leader>r :Telescope live_grep<cr>
nmap <leader>t :Telescope file_browser<cr>

" In file finding
nmap gs /
nmap <leader><leader> <Plug>(easymotion-bd-f)
nmap <leader>j <Plug>(easymotion-j)
nmap <leader>k <Plug>(easymotion-k)

" Easier movement between splits
nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l

" Control misc commands
" √ = Alt + j & ª = Alt + k
nmap ª :move-2<cr>
nmap √ :move+1<cr>
vmap < < gv
vmap > > gv
vmap <esc> <C-c>
nnoremap <silent> , @=(foldlevel('.')?'za':"\<Space>")<cr>
vnoremap , zf
nmap <tab><tab> <C-6>
nmap <C-c> :e ~/.config/nvim/init.vim<cr>

" Character completion
imap (<Tab> ()<Left>
imap [<Tab> []<Left>
imap {<Tab> {}<Left>
imap '<Tab> ''<Left>
imap "<Tab> ""<Left>
imap `<Tab> ``<Left>
inoremap {<cr> {<cr>}<ESC>O

" Quickfix
nmap <leader>h :cprev<cr>
nmap <leader>l :cnext<cr>
nmap <leader>qf :Telescope quickfix<cr>

" Fix for a problem I had
nmap gx <nop>
