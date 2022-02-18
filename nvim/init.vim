
" <<--------- Vimplug Install --------->>

if ! filereadable(system('echo -n "${XDG_CONFIG_HOME:-$HOME/.config}/nvim/autoload/plug.vim"'))
	echo "Downloading junegunn/vim-plug to manage plugins..."
	silent !mkdir -p ${XDG_CONFIG_HOME:-$HOME/.config}/nvim/autoload/
	silent !curl "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim" > ${XDG_CONFIG_HOME:-$HOME/.config}/nvim/autoload/plug.vim
	autocmd VimEnter * PlugInstall
endif

" <<--------- Neovim Plugins --------->>

call plug#begin()
Plug 'vim-pandoc/vim-pandoc'
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-markdown'
Plug 'instant-markdown/vim-instant-markdown', {'for': 'markdown', 'do': 'yarn install'}
Plug 'glepnir/dashboard-nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'preservim/nerdtree'
Plug 'pangloss/vim-javascript'
Plug 'crusoexia/vim-monokai'
Plug 'tpope/vim-surround'
Plug 'tmsvg/pear-tree'
Plug 'Valloric/MatchTagAlways'
Plug 'dkarter/bullets.vim'
Plug 'frazrepo/vim-rainbow'
Plug 'tpope/vim-commentary'
Plug 'preservim/tagbar'
Plug 'kyoz/purify', { 'rtp': 'vim' }
Plug 'rafi/awesome-vim-colorschemes'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'voldikss/vim-floaterm'
Plug 'norcalli/nvim-colorizer.lua'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }
Plug 'ryanoasis/vim-devicons'
Plug 'crusoexia/vim-javascript-lib'
Plug 'morhetz/gruvbox'
Plug 'ap/vim-css-color'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'dracula/vim'
Plug 'alvan/vim-closetag'
Plug 'neoclide/coc.nvim'
Plug 'vimwiki/vimwiki'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'bioSyntax/bioSyntax-vim'
call plug#end()

" <<--------- General Settings --------->>

let mapleader = " "
syntax on
filetype plugin indent on
au! BufWritePost ~/.config/nvim/init.vim source %
set bg=dark
set smartcase
set tabstop=4
set noerrorbells
set scrolloff=8
set termguicolors
set mouse=a
set number relativenumber
set splitright
set splitbelow
set cmdheight=2
set ruler
set shiftwidth=4
set showtabline=2
set t_Co=256
set nu rnu
set noshowmode
set expandtab
set updatetime=300
set formatoptions-=cro
set clipboard=unnamedplus
set smartindent
set hls is
set laststatus=2
set cursorline
set encoding=UTF-8
set incsearch
set showcmd

" <<--------- Plugins Config --------->>

let g:goyo_width = 60
let g:limelight_default_coefficient = 0.7
let g:limelight_conceal_ctermfg = 'gray'

" Gruvbox Config
"let g:gruvbox_transparent_bg = 1
"let g:gruvbox_underline = 1
"let g:gruvbox_undercurl = 1
"let g:gruvbox_bold = 1
"let g:gruvbox_italic = 1
"colorscheme gruvbox

" Transparency
"hi! Normal ctermbg=NONE guibg=NONE
"hi! NonText ctermbg=NONE guibg=NONE

" Monokai
colorscheme monokai
let g:monokai_term_italic = 1
let g:monokai_gui_italic = 1

" Vim-Javascript
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1
let g:javascript_plugin_flow = 1

" Live-Latex-Preview
let g:livepreview_previewer = 'zathura'

" Instant-Markdown
let g:instant_markdown_autostart = 0
let g:instant_markdown_browser = "qutebrowser"
let g:instant_markdown_mathjax = 1
let g:instant_markdown_mermaid = 1


" Coc
inoremap <expr> <Tab> pumvisible() ? coc#_select_confirm() : "<Tab>"

" Colorizer
lua require'colorizer'.setup()

" Rainbow
let g:rainbow_active = 1

" Ligtline Config
if !has('gui_running')
  set t_Co=256
endif

let g:lightline = {
      \ 'colorscheme': 'powerline',
      \ }

" Vim-Bullets
let g:bullets_enabled_file_types = [
    \ 'markdown',
    \ 'text',
    \ 'tex',
    \ 'rmarkdown',
    \]

" Dashboard
let g:dashboard_default_executive ='telescope'

" Vim-Markdown
let g:markdown_fenced_languages = ['html', 'python', 'bash=sh']

" NERDTree
let g:WebDevIconsDisableDefaultFolderSymbolColorFromNERDTreeDir = 1
let g:WebDevIconsDisableDefaultFileSymbolColorFromNERDTreeFile = 1

" <<--------- Bindings --------->>

autocmd Filetype markdown map <F8> :!pandoc<space><C-r>%<space>-o<space><C-r>%.pdf<Enter><Enter>
autocmd Filetype rmd map <F8> :!echo<space>"require(rmarkdown);<space>render('<c-r>%')"<space>\|<space>R<space>--vanilla<enter>
autocmd Filetype tex map <F8> :! pdflatex %<CR><CR>
map <F12> :PlugInstall<CR>
map <leader>t :TagbarToggle<CR>
map <leader>p :LLPStartPreview<CR>
map <leader>m :InstantMarkdownPreview
map <leader>g :Goyo<CR>
map <leader>l :Limelight!!<CR>
map <leader>n :NERDTreeToggle<CR>
map <leader>b :vsp<space>$BIB<CR>
map <leader>s :set spelllang=en_us<CR>
nnoremap <C-h> :wincmd h<CR>
nnoremap <C-c> <Esc>
nnoremap <C-j> :wincmd j<CR>
nnoremap <C-k> :wincmd k<CR>
nnoremap <C-l> :wincmd l<CR>
nnoremap <leader>o o<Esc>0"_D
nnoremap <leader>O O<Esc>0"_D
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
