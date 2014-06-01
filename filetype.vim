
if exists("did_load_filetypes")
  finish
endif
augroup filetypedetect
  au! BufRead,BufNewFile *.in       setfiletype otter
  au! BufRead,BufNewFile *.pddl     setfiletype lisp
augroup END
