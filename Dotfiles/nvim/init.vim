call plug#begin("~/.config/nvim/plugged/")
Plug 'jalvesaq/Nvim-R', {'branch': 'stable'}
Plug 'vim-pandoc/vim-pandoc'
Plug 'roxma/vim-hug-neovim-rpc'
Plug 'williamboman/nvim-lsp-installer'
Plug 'neovim/nvim-lspconfig'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'patstockwell/vim-monokai-tasty'
Plug 'tell-k/vim-autopep8'
Plug 'tpope/vim-markdown'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'preservim/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'pangloss/vim-javascript'
Plug 'tpope/vim-surround'
Plug 'airblade/vim-rooter'
Plug 'tmsvg/pear-tree'
Plug 'dkarter/bullets.vim'
Plug 'frazrepo/vim-rainbow'
Plug 'tpope/vim-commentary'
Plug 'preservim/tagbar'
Plug 'kyoz/purify', { 'rtp': 'vim' }
Plug 'rafi/awesome-vim-colorschemes'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'Yggdroot/indentLine'
Plug 'voldikss/vim-floaterm'
Plug 'norcalli/nvim-colorizer.lua'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }
Plug 'ryanoasis/vim-devicons'
Plug 'ap/vim-css-color'
Plug 'nvim-lua/plenary.nvim'
Plug 'dracula/vim'
Plug 'alvan/vim-closetag'
Plug 'vimwiki/vimwiki'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'bioSyntax/bioSyntax-vim'
call plug#end()

" <<--------- General Settings --------->>

" Cursor color
highlight Cursor guifg=white guibg=black
highlight iCursor guifg=white guibg=steelblue
set guicursor=n-v-c:block-Cursor
set guicursor+=i:ver100-iCursor
set guicursor+=n-v-c:blinkon0
set guicursor+=i:blinkwait10

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

" Transparency
" hi! Normal ctermbg=NONE guibg=NONE
" hi! NonText ctermbg=NONE guibg=NONE

" colorscheme gotham

" Live-Latex-Preview
let g:livepreview_previewer = 'zathura'

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
let g:dashboard_default_executive ='fzf'

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
autocmd Filetype tex map <F8> :! xelatex %<CR><CR>

" Autopep8
autocmd FileType python noremap <buffer> <F10> :call Autopep8()<CR>

" Map For Plugins
map <F12> :PlugInstall<CR>
map <leader>h :TagbarToggle<CR>
map <leader>m :InstantMarkdownPreview
map <leader>g :Goyo<CR>
map <leader>l :Limelight!!<CR>
map <leader>n :NERDTreeToggle<CR>
map <leader>b :vsp<space>$BIB<CR>
let g:floaterm_keymap_new = '<Leader>ft'
let g:floaterm_keymap_toggle = '<Leader>t'

" Changing Window
nnoremap <C-c> <Esc>
nnoremap <C-LEFT> :wincmd h<CR>
nnoremap <C-DOWN> :wincmd j<CR>
nnoremap <C-UP> :wincmd k<CR>
nnoremap <C-RIGHT> :wincmd l<CR>

" Adding Line
nnoremap <leader>o o<Esc>0"_D
nnoremap <leader>O O<Esc>0"_D

" Moving Lines
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

" Save file
nnoremap zz :update<cr>

" Close without save
nnoremap qq :q!<cr>

" Save and Close
nnoremap zq :wq<cr>

" Workspaces
map <leader>w :source ~/00\ -\ Documents/40\ -\ Programming/10\ -\ R/Studio.R<CR>

" air-line
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'

" Indent Line
let g:indentLine_char = ':'

" Monokai Tasty
let g:vim_monokai_tasty_italic = 1
colorscheme vim-monokai-tasty
let g:airline_theme='monokai_tasty'
