" Workaround to load vim-markdown commands
if !exists(":Toc")
  set filetype=mkd
  set filetype=mmd
endif

" vim-commentary support
set commentstring=<!--\ %\ %s\ -->
