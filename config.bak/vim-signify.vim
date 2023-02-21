let g:signify_sign_add               = '+'
let g:signify_sign_delete            = '-'
let g:signify_sign_delete_first_line = '-1'
let g:signify_sign_change            = 'c'
let g:signify_sign_changedelete      = 'c-'

nnoremap <leader>gd :SignifyDiff<cr>
nnoremap <leader>gp :SignifyHunkDiff<cr>
nnoremap <leader>gu :SignifyHunkUndo<cr>

" hunk jumping
nmap <leader>gj <plug>(signify-next-hunk)
nmap <leader>gk <plug>(signify-prev-hunk)

