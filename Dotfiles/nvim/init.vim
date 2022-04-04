call plug#begin()
Plug 'vim-pandoc/vim-pandoc'
Plug 'tell-k/vim-autopep8'
Plug 'itchyny/lightline.vim'
Plug 'tanvirtin/monokai.nvim'
Plug 'tpope/vim-markdown'
Plug 'wfxr/minimap.vim'
Plug 'glepnir/dashboard-nvim'
Plug 'preservim/nerdtree'
Plug 'pangloss/vim-javascript'
Plug 'crusoexia/vim-monokai'
Plug 'tpope/vim-surround'
Plug 'tmsvg/pear-tree'
Plug 'dkarter/bullets.vim'
Plug 'frazrepo/vim-rainbow'
Plug 'tpope/vim-commentary'
Plug 'preservim/tagbar'
Plug 'kyoz/purify', { 'rtp': 'vim' }
Plug 'rafi/awesome-vim-colorschemes'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'voldikss/vim-floaterm'
Plug 'norcalli/nvim-colorizer.lua'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }
Plug 'ryanoasis/vim-devicons'
Plug 'crusoexia/vim-javascript-lib'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'morhetz/gruvbox'
Plug 'ap/vim-css-color'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'dracula/vim'
Plug 'alvan/vim-closetag'
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

" Ctrl + S Save
nnoremap <silent><c-s> :<c-u>update<cr>
vnoremap <silent><c-s> <c-c>:update<cr>gv
inoremap <silent><c-s> <c-o>:update<cr>

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


" Minimap
let g:minimap_width = 10
let g:minimap_auto_start = 1
let g:minimap_auto_start_win_enter = 1

colorscheme challenger_deep
let g:monokai_term_italic = 1
let g:monokai_gui_italic = 1

" Vim-Javascript
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1
let g:javascript_plugin_flow = 1

" Live-Latex-Preview
let g:livepreview_previewer = 'zathura'

" Coc
inoremap <expr> <Tab> pumvisible() ? coc#_select_confirm() : "<Tab>"
source $HOME/.config/nvim/plug-config/coc.vim

" Colorizer
lua require'colorizer'.setup()

" Rainbow
let g:rainbow_active = 1

" Ligtline Config
if !has('gui_running')
  set t_Co=256
endif

let g:lightline = { 'colorscheme': 'powerline', }

" Vim-Bullets
let g:bullets_enabled_file_types = [ 'markdown', 'text', 'tex', 'rmarkdown',]

" Dashboard
let g:dashboard_default_executive ='telescope'

" Vim-Markdown
let g:markdown_fenced_languages = ['html', 'python', 'bash=sh']

" NERDTree
let g:WebDevIconsDisableDefaultFolderSymbolColorFromNERDTreeDir = 1
let g:WebDevIconsDisableDefaultFileSymbolColorFromNERDTreeFile = 1

" <<--------- Bindings --------->>

" Run Python Code
autocmd FileType python map <buffer> <F9> :w<CR>:exec '!python' shellescape(@%, 1)<CR>
autocmd FileType python imap <buffer> <F9> <esc>:w<CR>:exec '!python' shellescape(@%, 1)<CR>

" Compile Markdown
autocmd Filetype markdown map <F8> :!pandoc<space><C-r>%<space>-o<space><C-r>%.pdf<Enter><Enter>
autocmd Filetype rmd map <F8> :!echo<space>"require(rmarkdown);<space>render('<c-r>%')"<space>\|<space>R<space>--vanilla<enter>
autocmd Filetype tex map <F8> :! pdflatex %<CR><CR>

" Autopep8
autocmd FileType python noremap <buffer> <F10> :call Autopep8()<CR>

" Maps For Plugins
map <F12> :PlugInstall<CR>
map <leader>t :TagbarToggle<CR>
map <leader>p :LLPStartPreview<CR>
map <leader>m :InstantMarkdownPreview
map <leader>g :Goyo<CR>
map <leader>l :Limelight!!<CR>
map <leader>n :NERDTreeToggle<CR>
map <leader>b :vsp<space>$BIB<CR>
map <leader>s :set spelllang=en_us<CR>
map <leader>c :Copilot disable<CR>

" Changing Window
nnoremap <C-h> :wincmd h<CR>
nnoremap <C-c> <Esc>
nnoremap <C-j> :wincmd j<CR>
nnoremap <C-k> :wincmd k<CR>
nnoremap <C-l> :wincmd l<CR>

" Adding Line
nnoremap <leader>o o<Esc>0"_D
nnoremap <leader>O O<Esc>0"_D

" Moving Lines
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

" Save file
nnoremap zz :update<cr>

" Save and Close
nnoremap zq :wq<cr>

" Escape
inoremap jj <ESC>
inoremap kk <ESC>
