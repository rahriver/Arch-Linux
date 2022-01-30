call plug#begin()
Plug 'scrooloose/nerdtree'
Plug 'vim-pandoc/vim-pandoc'
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-surround'
Plug 'voldikss/vim-floaterm'
Plug 'junegunn/fzf.vim'
Plug 'dylanaraps/wal.vim'
Plug 'alvan/vim-closetag'
Plug 'dracula/vim'
Plug 'vimwiki/vimwiki'
" Plug 'sheerun/vim-polyglot'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'bioSyntax/bioSyntax-vim'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'xuhdev/vim-latex-live-preview'
Plug 'reedes/vim-lexical'
call plug#end()

" Vim settings
let mapleader = " "
syntax on
set background=dark
set nocompatible
filetype plugin indent on
set smartcase
set tabstop=4
set noerrorbells
set scrolloff=8
set nu
set smartindent
set laststatus=2
set incsearch
set encoding=utf-8
set showcmd
let g:goyo_width = 60
let g:limelight_default_coefficient = 0.7
let g:limelight_conceal_ctermfg = 1
let g:livepreview_previewer = 'zathura'

" Ligtline Config
if !has('gui_running')
  set t_Co=256
endif

let g:lightline = {
      \ 'colorscheme': 'powerline',
      \ }
colorscheme dracula

" Bindings
autocmd Filetype markdown map <F5> :!pandoc<space><C-r>%<space>-o<space><C-r>%.pdf<Enter><Enter>
autocmd Filetype rmd map <F5> :!echo<space>"require(rmarkdown);<space>render('<c-r>%')"<space>\|<space>R<space>--vanilla<enter>
autocmd Filetype tex map <F5> :! pdflatex %<CR><CR>
map <leader>u :UltiSnipsEdit<CR>
map <F8> :LLPStartPreview<CR>
map <F9> :Goyo<CR>
map <F10> :Limelight!!<CR>
map <leader>n :NERDTreeToggle<CR>
map <F12> :PlugInstall<CR>

nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>o o<Esc>0"_D
nnoremap <leader>O O<Esc>0"_D
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

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

" Lexical Spell Checker
augroup lexical
	autocmd!
	autocmd FileType markdown,mkd call lexical#init()
	autocmd FileType textile call lexical#init()
	autocmd FileType tex call lexical#init()
	autocmd FileType text call lexical#init({ 'spell': 0 })
augroup END
let g:lexical#spell = 1
let g:lexical#spellfile = ['~/.vim/spell/en.utf-8.add',]

