" Keyboards should have escape key on home row
imap jj <Esc>

" LSP stuff
nmap <leader>cd :lua vim.lsp.buf.definition()<cr>
nmap <leader>cn :lua vim.lsp.buf.rename()<cr>
nmap <leader>cr :lua vim.lsp.buf.references()<cr>
nmap <leader>cf :lua vim.lsp.buf.formatting()<cr>
nmap <leader>cj :lua vim.lsp.buf.hover()<cr>

" Add characters
nmap <leader>qd ciw""<esc>P
nmap <leader>qs ciw''<esc>P
vmap <leader>qd s""<esc>P
vmap <leader>qs s''<esc>P
nmap <leader>; A;<esc>
nmap <leader>, A,<esc>

" Leader misc commands
nmap <leader>cs :source ~/.config/nvim/init.vim<cr>
nmap <leader>w :w<cr>
nmap <leader>s :%s///<Left><Left>
vmap <leader>y "+y
tmap <leader><esc> <C-\><C-n>

" Git commands
nmap <leader>gs :G<cr>
nmap <leader>gc :Git commit<cr>
nmap <leader>gg :Git pull<cr>
nmap <leader>gp :Git push<cr>
nmap <leader>gl :Git log<cr>
nmap <leader>gbl :Git blame<cr>
nmap <leader>gbr :Telescope git_branches<cr>
nmap <leader>gd :Gdiffsplit<cr>
nmap <leader>g<left> :diffget //2<cr>
nmap <leader>g<Right> :diffget //3<cr>

" Looking up stuff commands
nmap <Leader>f :lua require('telescope.builtin').find_files(require('telescope.themes').get_dropdown({}))<cr>
nmap <leader>b :lua require('telescope.builtin').buffers(require('telescope.themes').get_dropdown({}))<cr>
nmap <leader>rl :lua require('telescope.builtin').live_grep(require('telescope.themes').get_dropdown({}))<cr>
nmap <leader>rs :lua require('telescope.builtin').grep_string(require('telescope.themes').get_dropdown({}))<cr>
nmap <leader>nv :lua require('luafiles.init').search_config()<cr>
nmap <leader>nn :lua require('luafiles.init').search_notes()<cr>
nmap <leader>e :lua require('telescope.builtin').file_browser(require('telescope.themes').get_dropdown({}))<cr>

" In file finding
nmap gs /
map <leader>a <Plug>(easymotion-bd-f)
map <leader>j <Plug>(easymotion-j)
map <leader>k <Plug>(easymotion-k)

" Easier movement between splits
nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l

" Misc commands
" √ = Alt + j & ª = Alt + k
nmap ª :move-2<cr>V=<esc>
nmap √ :move+1<cr>V=<esc>
vmap J :m '>+1<cr>gv=gv
vmap K :m '<-2<cr>gv=gv
vmap < < gv
vmap > > gv
nnoremap , za
vnoremap , zf
nmap <tab><tab> <C-^>
" Makes nice comment block
nmap gcb 0i=== <esc>A ===<esc>yypyypVr=kkVr=Vjjgc
" Selects indentation level (See partials/misc.vim for function code)
nmap <leader><cr> :call SelectIndentWithSpace()<cr>
nmap <cr> :call SelectIndent()<cr>

" Character completion
imap (<Tab> ()<Left>
imap [<Tab> []<Left>
imap {<Tab> {}<Left>
imap '<Tab> ''<Left>
imap "<Tab> ""<Left>
inoremap {<cr> {<cr>}<ESC>O

" Quickfix
nmap <leader>h :cprev<cr>
nmap <leader>l :cnext<cr>
nmap <leader>qf :Telescope quickfix<cr>
