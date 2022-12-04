call plug#begin("~/.config/nvim/plugged/")
Plug 'reedes/vim-litecorrect'
Plug 'jalvesaq/Nvim-R', { 'for': 'r', 'branch': 'stable'}
Plug 'sainnhe/everforest'
Plug 'kamykn/popup-menu.nvim'
Plug 'https://github.com/dracula/vim.git'
Plug 'mhinz/vim-startify'
Plug 'dylanaraps/wal.vim'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' }
Plug 'catppuccin/nvim', {'as': 'catppuccin'}
Plug 'ryanoasis/vim-devicons'
Plug 'godlygeek/tabular'
Plug 'preservim/vim-markdown'
Plug 'EdenEast/nightfox.nvim'
Plug 'shaunsingh/nyoom.nvim'
Plug 'martinsione/darkplus.nvim'
Plug 'metakirby5/codi.vim'
Plug 'honza/vim-snippets'
Plug 'junegunn/gv.vim'
Plug 'tpope/vim-rhubarb'
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
Plug 'tpope/vim-fugitive'
Plug 'tanvirtin/monokai.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'arzg/vim-colors-xcode'
Plug 'embark-theme/vim', { 'as': 'embark', 'branch': 'main' }
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'roxma/vim-hug-neovim-rpc'
Plug 'github/copilot.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'tell-k/vim-autopep8'
Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }
Plug 'preservim/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-surround'
Plug 'airblade/vim-rooter'
Plug 'tmsvg/pear-tree'
Plug 'dkarter/bullets.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tpope/vim-commentary'
Plug 'preservim/tagbar'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'Yggdroot/indentLine'
Plug 'voldikss/vim-floaterm'
Plug 'norcalli/nvim-colorizer.lua'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ap/vim-css-color'
Plug 'nvim-lua/plenary.nvim'
Plug 'alvan/vim-closetag'
Plug 'vimwiki/vimwiki'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'bioSyntax/bioSyntax-vim'
call plug#end()
