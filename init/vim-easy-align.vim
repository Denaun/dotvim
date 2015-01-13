vmap <Leader>a <Plug>(EasyAlign)

let g:easy_align_delimiters = 
      \ {
      \   '%': { 'pattern': '%\+',
      \          'delimiter_align': 'l',
      \          'left_margin':   2,
      \          'ignore_groups': ['!Comment']
      \        },
      \ }
