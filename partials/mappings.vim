" Keyboards should have escape key on home row
imap jj <Esc>

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
nmap <leader>cs :source ~/.config/nvim/init.vim<cr>
nmap <leader>w :w<cr>
nmap <leader>s :%s///<Left><Left>
vmap <leader>y "+y
nmap <leader>Y "+yy
tmap <leader><esc> <C-\><C-n>
nmap <leader>cc :Goyo<cr><space>cs

" Git commands
nmap <leader>gs :G<cr>
nmap <leader>gc :Git commit<cr>
nmap <leader>gg :Git pull<cr>
nmap <leader>gp :Git push<cr>
nmap <leader>gl :Telescope git_commits<cr>
nmap <leader>gbl :Git blame<cr>
nmap <leader>gbb :GitMessenger<cr>
nmap <leader>gbr :Telescope git_branches<cr>
nmap <leader>gr :Git remote<cr>
nmap <leader>gd :Gdiffsplit<cr>
nmap <leader>g<left> :diffget //2<cr>
nmap <leader>g<Right> :diffget //3<cr>

" Looking up stuff commands
nnoremap <Leader>f :Telescope find_files theme=get_dropdown<cr>
nmap <leader>b :Telescope buffers theme=get_dropdown<cr>
nmap <leader>r :Telescope live_grep theme=get_dropdown<cr>
nmap <leader>a :Telescope file_browser theme=get_dropdown<cr>
nnoremap <leader>nv :lua require('luafiles.init').search_config()<CR>
nnoremap <leader>nn :lua require('luafiles.init').search_notes()<CR>

" In file finding
nmap gs /
map <leader><leader> <Plug>(easymotion-bd-f)
map <leader>j <Plug>(easymotion-j)
map <leader>k <Plug>(easymotion-k)

" Easier movement between splits
nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l

" Tab commands
nmap <leader>th :tabprev<cr>
nmap <leader>tl :tabnext<cr>
nmap <leader>tn :tabnew<cr>
nmap <leader>tc :tabclose<cr>

" Misc commands
" √ = Alt + j & ª = Alt + k
nmap ª :move-2<cr>
nmap √ :move+1<cr>
vmap < < gv
vmap > > gv
nnoremap <silent> , @=(foldlevel('.')?'za':"\<Space>")<cr>
vnoremap , zf
nmap <tab><tab> <C-^>
" Makes nice comment block
nmap gcb 0i=== <esc>A ===<esc>yypyypVr=kkVr=Vjjgc

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
nmap <leader>H :cfirst<cr>
nmap <leader>L :clast<cr>
nmap <leader>qf :Telescope quickfix<cr>

" Fix for a problem I had
nmap gx <nop>
