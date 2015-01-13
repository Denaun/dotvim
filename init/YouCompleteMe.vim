" Disable completion previews with function prototypes, etc.
" (Solves a problem with UltiSnips)
set completeopt=menu
let g:ycm_add_preview_to_completeopt = 0

" Disable completion for certain file types
" (The first group should correspond to the default value)
let g:ycm_filetype_blacklist = {
      \ 
      \ 'tagbar' : 1,
      \ 'qf' : 1,
      \ 'notes' : 1,
      \ 'markdown' : 1,
      \ 'unite' : 1,
      \ 'text' : 1,
      \ 'vimwiki' : 1,
      \ 'pandoc' : 1,
      \ 'infolog' : 1,
      \ 'mail' : 1,
      \ 
      \ 'mmd': 1,
      \}
