
" download vim-plug if missing
if empty(glob("~/.vim/autoload/plug.vim"))
  silent! execute '!curl --create-dirs -fsSLo ~/.vim/autoload/plug.vim https://raw.github.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * silent! PlugInstall
endif

if empty(glob("~/.local/share/nvim/site/autoload/plug.vim"))
  silent! execute '!curl --create-dirs -fsSLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * silent! PlugInstall
  autocmd VimEnter * silent! UpdateRemotePlugins
endif

call plug#begin('~/.vim/plugged')

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

"if !empty(glob("/usr/share/doc/fzf/examples"))
"  Plug '/usr/share/doc/fzf/examples'
"endif
"
"if !empty(glob("/usr/local/opt/fzf"))
"  Plug '/usr/local/opt/fzf'
"endif

Plug 'mattn/emmet-vim'
Plug 'dense-analysis/ale'
Plug 'chrisbra/Colorizer'
Plug 'junegunn/fzf.vim'
Plug 'liuchengxu/vim-better-default'
Plug 'mileszs/ack.vim'
Plug 'bkad/CamelCaseMotion'
Plug 'Raimondi/delimitMate'
Plug 'tpope/vim-commentary'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'airblade/vim-gitgutter'
Plug 'junegunn/vim-easy-align'
Plug 'easymotion/vim-easymotion'
Plug 'sheerun/vim-polyglot'
Plug 'janko-m/vim-test'
Plug 'rizzatti/dash.vim'
Plug 'tpope/vim-surround'
Plug 'mg979/vim-visual-multi', { 'branch': 'test' }
Plug 'thinca/vim-visualstar'
Plug 'tpope/vim-repeat'
Plug 'svermeulen/vim-easyclip'
Plug 'brooth/far.vim'
Plug 'vim-scripts/CmdlineComplete'
Plug 'kana/vim-altr'
Plug 'tomtom/tlib_vim'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
Plug 'itchyny/lightline.vim'
Plug 'mhinz/vim-mix-format'
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'slashmili/alchemist.vim'
Plug 'vim-ruby/vim-ruby'
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
Plug 'benmills/vimux'

" Vim textobj user
Plug 'kana/vim-textobj-user'
Plug 'kana/vim-textobj-indent'
Plug 'sgur/vim-textobj-parameter'
Plug 'vim-scripts/matchit.zip'
Plug 'adriaanzon/vim-textobj-matchit'
Plug 'beloglazov/vim-textobj-quotes'
Plug 'Julian/vim-textobj-brace'
Plug 'terryma/vim-expand-region'

" Themes
Plug 'diegonogueira/nova-vim'
Plug 'jnurmine/Zenburn'
Plug 'acepukas/vim-zenburn'
Plug 'arcticicestudio/nord-vim'

call plug#end()
