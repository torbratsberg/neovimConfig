let g:netrw_banner=0
let g:netrw_liststyle=3
let g:netrw_winsize=13
let g:netrw_altv=1
let g:table_mode_corner='+'
let g:coc_global_extensions = [
                \'coc-tsserver',
                \'coc-css',
                \'coc-emmet',
                \'coc-python',
                \'coc-phpls',
            \]
let g:python_host_prog  = '/usr/bin/python'
let g:python3_host_prog  = '/usr/local/bin/python3'

let mapleader=" "
let leader=" "

" Use , instead of ; in EasyMotion search for ISO layout convenience
let g:EasyMotion_keys = get(g:,
    \ 'EasyMotion_keys', 'asdghklqwertyuiopzxcvbnmfj,')
