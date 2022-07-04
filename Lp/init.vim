call plug#begin('~/.config/nvim/plugged')
Plug 'vim-pandoc/vim-pandoc'
Plug 'jalvesaq/Nvim-R', {'branch': 'stable'}
Plug 'kyazdani42/nvim-web-devicons'
Plug 'tell-k/vim-autopep8'
Plug 'mhinz/vim-startify'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'patstockwell/vim-monokai-tasty'
Plug 'tpope/vim-markdown'
Plug 'ncm2/ncm2'
Plug 'roxma/nvim-yarp'
Plug 'Raimondi/delimitMate'
Plug 'jalvesaq/Nvim-R'
Plug 'gaalcaras/ncm-R'
Plug 'roxma/vim-hug-neovim-rpc'
Plug 'sirver/UltiSnips'
Plug 'ncm2/ncm2-ultisnips'
Plug 'lervag/vimtex'
Plug 'preservim/nerdtree'
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
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ryanoasis/vim-devicons'
Plug 'ap/vim-css-color'
Plug 'nvim-lua/plenary.nvim'
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
" let g:minimap_width = 10
" let g:minimap_auto_start = 1
" let g:minimap_auto_start_win_enter = 1

let g:vim_monokai_tasty_italic = 1
colorscheme gotham

" Vim-Javascript
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1
let g:javascript_plugin_flow = 1

" Live-Latex-Preview
let g:livepreview_previewer = 'zathura'

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

let g:lightline = { 'colorscheme': 'molokai', }

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
map <leader>h :TagbarToggle<CR>
map <leader>m :InstantMarkdownPreview
map <leader>g :Goyo<CR>
map <leader>l :Limelight!!<CR>
map <leader>n :NERDTreeToggle<CR>
map <leader>b :vsp<space>$BIB<CR>

" Changing Window
nnoremap <C-Left> :wincmd h<CR>
nnoremap <C-c> <Esc>
nnoremap <C-Down> :wincmd j<CR>
nnoremap <C-Up> :wincmd k<CR>
nnoremap <C-Right> :wincmd l<CR>

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

" Floaterm
let g:floaterm_keymap_new = '<Leader>ft'
let g:floaterm_keymap_toggle = '<Leader>t'

" Workspaces
map <leader>w :source ~/Documents/Programming/R/Workspace.R<CR>

" Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline_theme='monokai_tasty'
