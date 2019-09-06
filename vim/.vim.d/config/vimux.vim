" Zoom the tmux runner page (full)
map <Leader>vf :VimuxZoomRunner<CR>

" Close vim tmux runner opened by VimuxRunCommand
map <Leader>vq :VimuxCloseRunner<CR>

" Inspect runner pane
map <Leader>vi :VimuxInspectRunner<CR>

function! TmuxToggleZoom()
  return system("tmux resize-pane -t 0 -Z")
endfunction

function! TmuxSetSize(size)
  return system("tmux resize-pane -t 1 -y " . a:size)
endfunction

noremap <silent> <leader>vv :call TmuxToggleZoom()<CR>
noremap <silent> <leader>vj :call TmuxSetSize(7)<CR>
noremap <silent> <leader>vk :call TmuxSetSize(30)<CR>
