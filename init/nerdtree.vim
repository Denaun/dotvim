nmap <leader>n :NERDTreeToggle<CR>
" Auto close if NERDtree is the only window left open
autocmd BufEnter * if (winnr("$") == 1 && exists("b:NERDTreeType")
      \ && b:NERDTreeType == "primary") | q | endif
