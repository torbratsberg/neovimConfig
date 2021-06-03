" Keyboards should have escape key on home row
imap jj <Esc>
tmap jj <C-\><C-n>

" Enter to select first or selected from completion menu
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
            \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Coc commands
xmap <leader>cf <Plug>(coc-format-selected)
vmap <leader>cf <Plug>(coc-format-selected)
nmap <leader>cf gg<Plug>(coc-format-selected)G
nmap <leader>cd <Plug>(coc-definition)
nmap <leader>cr <Plug>(coc-references)
nmap <leader>cn <Plug>(coc-rename)
nmap <leader>cp :CocList diagnostics<cr>
nmap <leader>co :CocList outline<cr>
imap <nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
imap <nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"

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
nmap <leader>tw :ToggleHightlightCWord<cr>
nmap <leader>pp :Prettier<cr>

" Git commands
nmap <leader>gs :G<cr>
nmap <leader>gc :Git commit<cr>
nmap <leader>gg :Git pull<cr>
nmap <leader>gp :Git push<cr>
nmap <leader>gl :Git log<cr>
nmap <leader>gbl :Git blame<cr>
nmap <leader>gbr :Telescope git_branches<cr>
nmap <leader>gr :Git remote<cr>
nmap <leader>gd :Gdiffsplit<cr>
nmap <leader>g<left> :diffget //2<cr>
nmap <leader>g<Right> :diffget //3<cr>

" Looking up stuff commands
nmap <Leader>f :lua require('telescope.builtin')
            \.find_files(require('telescope.themes').get_ivy({}))<cr>
nmap <leader>b :lua require('telescope.builtin')
            \.buffers(require('telescope.themes').get_ivy({}))<cr>
nmap <leader>rl :lua require('telescope.builtin')
            \.live_grep(require('telescope.themes').get_ivy({}))<cr>
nmap <leader>rs :lua require('telescope.builtin')
            \.grep_string(require('telescope.themes').get_ivy({}))<cr>
nmap <leader>nv :lua require('luafiles.init')
            \.search_config()<CR>
nmap <leader>nn :lua require('luafiles.init')
            \.search_notes()<CR>
nmap <leader>e :lua require('telescope.builtin')
            \.file_browser(require('telescope.themes').get_ivy({}))<cr>

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
" Resize splits easier
nnoremap <silent> <Leader><Up> :exe "resize " .
            \(winheight(0) * 3/2)<CR>
nnoremap <silent> <Leader><Down> :exe "resize " .
            \(winheight(0) * 2/3)<CR>
nnoremap <silent> <Leader><Right> :exe "vertical resize " .
            \(winwidth(0) * 3/2)<CR>
nnoremap <silent> <Leader><Left> :exe "vertical resize " .
            \(winwidth(0) * 2/3)<CR>

" Tab commands
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
" Indents current line and wraps in {}
nmap gns >>O{<esc>jo<backspace>}<esc>kki <esc>i
" Console logs variable under cursor on next line
nmap gcl viwyoconsole.log('<esc>pA', <esc>pA);<esc>_
" Selects indentation level (See partials/misc.vim for function code)
" nmap <cr> :call SelectIndent()<CR>
nmap <cr> :call SelectIndentWithSpace()<CR>

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
nmap <leader>H :cfirst<cr>
nmap <leader>L :clast<cr>
nmap <leader>qf :Telescope quickfix<cr>

" Fix for a problem I had
" nmap gx <nop>

" Make nmaps for navigating to marks with space{number}
for i in range(0, 9)
    exec "nmap <leader>" . i . " '" . i
endfor
