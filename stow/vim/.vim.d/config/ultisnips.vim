" let g:UltiSnipsExpandTrigger = "<Nop>"
let g:UltiSnipsJumpForwardTrigger="<c-n>"
let g:UltiSnipsJumpBackwardTrigger="<c-p>"
" let g:ulti_expand_or_jump_res = 0

" function ExpandSnippetOrCarriageReturn()
"   let snippet = UltiSnips#ExpandSnippetOrJump()
"   if g:ulti_expand_or_jump_res > 0
"     return snippet
"   else
"     return "\<CR>"
"   endif
" endfunction

" inoremap <expr> <Tab> pumvisible() ? "<C-R>=ExpandSnippetOrCarriageReturn()<CR>" : "\<CR>"
