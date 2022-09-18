" <<--------- Plugins Config --------->>
source ~/.config/nvim/plugins.vim
source ~/.config/nvim/plugin-configs/coc.vim
source ~/.config/nvim/plugin-configs/fzf.vim
source ~/.config/nvim/plugin-configs/codi.vim
source ~/.config/nvim/plugin-configs/vimtex.vim
source ~/.config/nvim/plugin-configs/embark.vim
source ~/.config/nvim/plugin-configs/latexpr.vim
source ~/.config/nvim/plugin-configs/airline.vim
source ~/.config/nvim/plugin-configs/indent.vim
source ~/.config/nvim/plugin-configs/limelight.vim
source ~/.config/nvim/plugin-configs/vim-mark.vim
source ~/.config/nvim/plugin-configs/goyo.vim
source ~/.config/nvim/plugin-configs/nerdtree.vim
source ~/.config/nvim/plugin-configs/rooter.vim

" <<--------- General Settings --------->>
colorscheme tokyonight-night

" Transparency
" hi! Normal ctermbg=NONE guibg=NONE
" hi! NonText ctermbg=NONE guibg=NONE

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
set mouse+=a
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
set updatetime=100
set formatoptions-=cro
set clipboard=unnamedplus
set smartindent
set hls is
set laststatus=2
set cursorline
set encoding=UTF-8
set incsearch
set showcmd

" <<--------- Bindings --------->>
" Disable Plugins For File Formats
autocmd FileType vimwiki,tex :Copilot disable
autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!

" Workspaces
map <leader>w :source ~/Documents/Projects/R/Workspace.R<CR>

" Run Python Code
autocmd FileType python map <buffer> <F9> :w<CR>:exec '!python' shellescape(@%, 1)<CR>
autocmd FileType python imap <buffer> <F9> <esc>:w<CR>:exec '!python' shellescape(@%, 1)<CR>
autocmd FileType python noremap <buffer> <F10> :call Autopep8()<CR>

" Compile PDF Files
autocmd Filetype markdown map <F8> :!pandoc<space><C-r>%<space>-o<space><C-r>%.pdf<Enter><Enter>
autocmd Filetype rmd map <F8> :!echo<space>"require(rmarkdown);<space>render('<c-r>%')"<space>\|<space>R<space>--vanilla<enter>
autocmd Filetype tex map <F8> :! pdflatex<space><C-r>%<space>%.pdf<CR><CR>
autocmd Filetype tex map <F9> :! xelatex<space><C-r>%<space>%.pdf<CR><CR>

" Plugin Mappings
map <leader>1 :PlugInstall<CR>
map <leader>2 :PlugClean<CR>
map <leader>h :TagbarToggle<CR>
map <leader>g :Goyo<CR>
map <C-l> :NERDTreeToggle<CR>
map <leader>p :LLPStartPreview<CR>
map <C-p> :Files<CR>
map <C-g> :Buffers<CR>
inoremap <C-f> <Esc><Esc>:BLines<CR>
let g:tex_flavor = 'tex'
let g:floaterm_keymap_toggle = '<C-t>'

" Navigation
nnoremap <silent>  <leader>= :bNext<CR>
nnoremap <C-c> <Esc>
nnoremap <C-LEFT> :wincmd h<CR>
nnoremap <C-DOWN> :wincmd j<CR>
nnoremap <C-UP> :wincmd k<CR>
nnoremap <C-RIGHT> :wincmd l<CR>
nnoremap <leader>- :bd<CR>
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

" Adding Line
nnoremap <leader>o o<Esc>0"_D
nnoremap <leader>O O<Esc>0"_D

" Saving File
nnoremap zz :update<cr>
nnoremap qq :q!<cr>
nnoremap zq :wq<cr>

" Extra Python Syntax
augroup python_syntax_extra
  autocmd!
  autocmd! Syntax python :syn keyword Keyword self cls
augroup END
