function! FZFOpen(command_str)
  if (expand('%') =~# 'NERD_tree' && winnr('$') > 1)
    exe "normal! \<c-w>\<c-w>"
  endif
  exe 'normal! ' . a:command_str . "\<cr>"
endfunction

nnoremap <silent> <leader>f :call FZFOpen(':Files')<CR>
nnoremap <silent> <leader>b :call FZFOpen(':Buffers')<CR>
nnoremap <silent> <leader>r :call FZFOpen(':History')<CR>
nnoremap <silent> <leader>F :call FZFOpen(':Ag')<CR>
" nnoremap <silent> <leader>pc :call FZFOpen(':Commands')<CR>
" nnoremap <silent> <leader>pl :call FZFOpen(':BLines')<CR>
" nnoremap <silent> <leader>pm :call FZFOpen(':Marks')<CR>

let $FZF_DEFAULT_COMMAND = 'ag --hidden --ignore .git -g ""'

" [Buffers] Jump to the existing window if possible
let g:fzf_buffers_jump = 1

" [[B]Commits] Customize the options used by 'git log':
let g:fzf_commits_log_options = '--graph --color=always --format="%C(auto)%h%d %s %C(black)%C(bold)%cr"'

" [Tags] Command to generate tags file
let g:fzf_tags_command = 'ctags -R'

" [Commands] --expect expression for directly executing the command
let g:fzf_commands_expect = 'alt-enter,ctrl-x'

" git grep
command! -bang -nargs=* GGrep
            \ call fzf#vim#grep('git grep --color=always --line-number '.shellescape(<q-args>), 0, <bang>0)

" actions
let g:fzf_action = {
            \ 'ctrl-q': 'wall | bdelete',
            \ 'ctrl-t': 'tab split',
            \ 'ctrl-s': 'split',
            \ 'ctrl-v': 'vsplit' }
