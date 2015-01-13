nmap <leader>l :call ShowTagbar()<CR>

function! ShowTagbar()
  if exists(":Toc")
    Toc
  else
    TagbarToggle
  endif
endfunction
