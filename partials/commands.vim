command! -nargs=0 Prettier :CocCommand prettier.formatFile
command! Qbuffers call setqflist(map(filter(range(1, bufnr('$')), 'buflisted(v:val)'), '{"bufnr":v:val}'))
command! FormatFile call FormatFileFunc()

