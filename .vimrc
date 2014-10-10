set nocompatible              " be iMproved, required
filetype off                  " required

" http://www.erikzaadi.com/2012/03/19/auto-installing-vundle-from-your-vimrc/
" Setting up Vundle - the vim plugin bundler
let iCanHazVundle=1
let vundle_readme=expand('~/.vim/bundle/vundle/README.md')
if !filereadable(vundle_readme)
  echo "Installing Vundle.."
  echo ""
  silent !mkdir -p ~/.vim/bundle
  silent !git clone https://github.com/gmarik/vundle ~/.vim/bundle/vundle
  let iCanHazVundle=0
endif

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
" alternatively, pass a path where Vundle should install plugins
"let path = '~/some/path/here'
"call vundle#rc(path)

" let Vundle manage Vundle, required
Plugin 'gmarik/vundle'

Plugin 'scrooloose/nerdtree.git'
Plugin 'kien/ctrlp.vim'
Plugin 'majutsushi/tagbar'
Plugin 'Lokaltog/vim-powerline'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'
Plugin 'AutoComplPop'
Plugin 'bling/vim-airline'



filetype plugin indent on     " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList          - list configured plugins
" :PluginInstall(!)    - install (update) plugins
" :PluginSearch(!) foo - search (or refresh cache first) for foo
" :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Plugin commands are not allowed.
" Put your stuff after this line



" general
syntax on
set t_Co=256
set nu
set tabstop=4
set shiftwidth=4
set expandtab
set hlsearch
set mouse=n
set cursorline
colorscheme desert
hi CursorLine term=bold cterm=bold ctermbg=235 guibg=Grey40
hi LineNr ctermfg=8 ctermbg=234
hi Search cterm=NONE ctermfg=15 ctermbg=166
set laststatus=2


" Plugin setting
" NERDTree
nmap <F9> :NERDTreeToggle<CR>

" Tagbar
nmap <F8> :TagbarToggle<CR>

" powerline
let g:Powerline_symbols = 'fancy' 

" easymotion
let g:EasyMotion_do_mapping = 0 " Disable default mappings
nmap s <Plug>(easymotion-s)
nmap s <Plug>(easymotion-s2)
let g:EasyMotion_smartcase = 1
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)

" AutoComplPop
let g:acp_behaviorSnipmateLength = 1
let g:acp_completeOption = '.,w,b,u,t,i,k'

" Airline
let g:airline#extensions#tabline#enabled = 1
