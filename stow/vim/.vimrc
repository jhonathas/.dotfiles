" ===================
" ====== basic ======
" ===================

set runtimepath+=~/.vim.d/vim/ " load snippets
nnoremap <space> <Nop>
map <space> <leader>

" ============================
" ====== plugin manager ======
" ============================

source ~/.vim.d/config/plug.vim " loads plugins
source ~/.vim.d/config/vim-better-default.vim

" =================================
" ====== load plugins config ======
" =================================

" plugins config
source ~/.vim.d/config/ultisnips.vim
source ~/.vim.d/config/vim-fzf.vim
source ~/.vim.d/config/camelcasemotion.vim
source ~/.vim.d/config/vim-commentary.vim
source ~/.vim.d/config/nerdtree.vim
source ~/.vim.d/config/easymotion.vim
source ~/.vim.d/config/dash.vim
source ~/.vim.d/config/vim-visual-multi.vim
source ~/.vim.d/config/vim-test.vim
source ~/.vim.d/config/vimux.vim
source ~/.vim.d/config/vim-visualstart.vim
source ~/.vim.d/config/vim-easyclip.vim
source ~/.vim.d/config/vim-gitgutter.vim
source ~/.vim.d/config/easyalign.vim
source ~/.vim.d/config/vim-altr.vim
" source ~/.vim.d/config/ale.vim
source ~/.vim.d/config/vim-mix-format.vim
source ~/.vim.d/config/lightline.vim
source ~/.vim.d/config/deoplete.vim
source ~/.vim.d/config/vim-textobj-user.vim
source ~/.vim.d/config/alchemist.vim
source ~/.vim.d/config/emmet.vim

" source ~/.vim.d/config/vim-hardtime.vim

" vim config
source ~/.vim.d/config/editor.vim
