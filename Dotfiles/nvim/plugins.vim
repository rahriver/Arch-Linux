call plug#begin("~/.config/nvim/plugged/")
Plug 'jalvesaq/Nvim-R', { 'for': 'r', 'branch': 'stable'}
Plug 'thedenisnikulin/vim-cyberpunk'
Plug 'catppuccin/nvim', {'as': 'catppuccin'}
Plug 'shaunsingh/oxocarbon.nvim', { 'do': './install.sh' }
Plug 'ryanoasis/vim-devicons'
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
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'nvim-lua/plenary.nvim'
Plug 'mhinz/vim-startify'
Plug 'Pocco81/true-zen.nvim'
Plug 'arzg/vim-colors-xcode'
Plug 'embark-theme/vim', { 'as': 'embark', 'branch': 'main' }
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'vim-pandoc/vim-pandoc'
Plug 'roxma/vim-hug-neovim-rpc'
Plug 'github/copilot.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'tell-k/vim-autopep8'
Plug 'tpope/vim-markdown'
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
Plug 'dracula/vim'
Plug 'alvan/vim-closetag'
Plug 'vimwiki/vimwiki'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'bioSyntax/bioSyntax-vim'
call plug#end()
