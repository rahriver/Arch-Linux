"__     _____ __  __ ____   ____ 
"\ \   / /_ _|  \/  |  _ \ / ___|
" \ \ / / | || |\/| | |_) | |    
"  \ V /  | || |  | |  _ <| |___ 
"   \_/  |___|_|  |_|_| \_\\____|

call plug#begin()
Plug 'vim-pandoc/vim-pandoc'
"Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdtree'
Plug 'https://github.com/tpope/vim-surround'
Plug 'voldikss/vim-floaterm'
Plug 'dylanaraps/wal.vim'
Plug 'mattn/emmet-vim'
Plug 'https://github.com/dracula/vim'
Plug 'https://github.com/junegunn/goyo.vim.git'
Plug 'https://github.com/junegunn/limelight.vim.git'
Plug 'https://github.com/rafi/awesome-vim-colorschemes.git'
Plug 'SirVer/ultisnips'
Plug 'https://github.com/ycm-core/YouCompleteMe.git'
Plug 'honza/vim-snippets'
Plug 'vimwiki/vimwiki'
Plug 'https://github.com/xuhdev/vim-latex-live-preview.git' 

call plug#end()

" Vim settings
let mapleader = " "
syntax on 
set background=dark
set nocompatible
filetype plugin indent on
set smartcase
set noerrorbells
set nu
set smartindent
set incsearch
" let g:airline_theme='deus'
set encoding=utf-8
colorscheme dracula
set showcmd
let g:goyo_width = 60
let g:limelight_default_coefficient = 0.7
let g:limelight_conceal_ctermfg = 1
let g:livepreview_previewer = 'zathura'

" Bindings
autocmd Filetype markdown map <F5> :!pandoc<space><C-r>%<space>-o<space><C-r>%.pdf<Enter><Enter>
autocmd Filetype rmd map <F5> :!echo<space>"require(rmarkdown);<space>render('<c-r>%')"<space>\|<space>R<space>--vanilla<enter>
autocmd Filetype tex map <F5> :! pdflatex %<CR><CR>
map <leader>u :UltiSnipsEdit<CR>
map <F8> :LLPStartPreview<CR>
map <F9> :Goyo<CR>
map <F10> :Limelight!!<CR>
map <F11> :NERDTreeToggle<CR>
map <F12> :PlugInstall<CR>

nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>

" UltiSnips
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsEditSplit="vertical"

map <leader>b :vsp<space>$BIB<CR>
map <leader>p :!opout <c-r>%<CR><CR>

" Transparency
hi! Normal ctermbg=NONE guibg=NONE
hi! NonText ctermbg=NONE guibg=NONE
