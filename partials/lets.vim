let g:netrw_banner=0
let g:netrw_winsize=25

let g:python_host_prog  = '/usr/bin/python'
let g:python3_host_prog  = '/usr/local/bin/python3'

let g:completion_matching_strategy_list = ['exact', 'substring', 'fuzzy']

let mapleader=" "
let leader=" "

" Use , instead of ; in EasyMotion search for ISO layout convenience
let g:EasyMotion_keys = get(g:, 'EasyMotion_keys', 'asdghklqwertyuiopzxcvbnmfj,')
