" vim-commentary support
setlocal commentstring=\%\ %s

" Update the numbers on unnumbered or constant-numbered figures.
" Avoids calls with empty parentheses.
command! -nargs=? -count RenumberFigures let i=<count> > 0 ? <count> : 1 |
      \ g/figure\(( *[0-9]\+ *)\)\?\([,;]\)/s//\='figure('.i.');'/ | let i=i+1
