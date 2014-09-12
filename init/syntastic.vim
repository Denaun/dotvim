nmap <leader>s :SyntasticCheck<CR>
nmap <leader>e :call ErrorsToggle()<CR>

let g:errors_is_open = 0
function! ErrorsToggle()
  if g:errors_is_open
    lcl
    let g:errors_is_open = 0
    execute g:errors_return_to_window . "wincmd w"
  else
    let g:errors_return_to_window = winnr()
    Errors
    let g:errors_is_open = 1
  endif
endfunction
