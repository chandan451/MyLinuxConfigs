"VIM Configuration File
"Configurer= Chandan_Panigrahi
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

"File tree
Plugin 'scrooloose/nerdtree'
let NERDTreeIgnore = ['__pycache__', '\.pyc$', '\.o$', '\.so$', '\.a$', '\.swp', '*\.swp', '\.swo', '\.swn', '\.swh', '\.swm', '\.swl', '\.swk', '\.sw*$', '[a-zA-Z]*egg[a-zA-Z]*', '.DS_Store']

"Status Bar
Plugin 'itchyny/lightline.vim'
set laststatus=2

"Syntax helpers
Plugin 'tpope/vim-surround'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'Vimjas/vim-python-pep8-indent'
Plugin 'easymotion/vim-easymotion'
Plugin 'klen/python-mode'
Plugin 'mattn/emmet-vim'
Plugin 'scrooloose/syntastic'
Plugin 'junegunn/fzf' 
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_python_checkers = [ 'pylint', 'flake8', 'pep8', 'python']

"Code Completion and Sutosuggestion
Plugin 'Valloric/YouCompleteMe'
let g:ycm_global_ycm_extra_conf = '/home/kingtazz/.vim/bundle/YouCompleteMe/third_party/ycmd/.ycm_extra_conf.py' 

" Keep Plugin commands between vundle#begin/end.
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
" see :h vundle for more details or wiki for FAQ

" set UTF-8 encoding
set enc=utf-8
set fenc=utf-8
set termencoding=utf-8
" disable vi compatibility (emulation of old bugs)
set nocompatible
" use indentation of previous line
set autoindent
" use intelligent indentation for C
set smartindent
" configure tabwidth and insert spaces instead of tabs
set tabstop=4        " tab width is 4 spaces
set shiftwidth=4     " indent also with 4 spaces
set expandtab        " expand tabs to spaces
" wrap lines at 120 chars. 80 is somewaht antiquated with nowadays displays.
set textwidth=120
" turn syntax highlighting on
set t_Co=256
syntax on
colorscheme gruvbox
" turn line numbers on
set bg=dark
set number relativenumber
"highlight matching braces
set showmatch
" intelligent comments
set comments=sl:/*,mb:\ *,elx:\ */

" Enhanced keyboard mappings
" in normal mode qq will quit without save
nmap qq ZQ
"exit the insert mode with jj
imap jj <Esc>
"xclip and clipboard setting
vnoremap <C-c> :w !xclip -i -sel c<CR><CR>

" in diff mode we use the spell check keys for merging
if &diff
  ” diff settings
  map <M-Down> ]c
  map <M-Up> [c
  map <M-Left> do
  map <M-Right> dp
  map <F9> :new<CR>:read !svn diff<CR>:set syntax=diff buftype=nofile<CR>gg
else
  " spell settings
  :setlocal spell spelllang=en
  " set the spellfile - folders must exist
  set spellfile=~/.vim/spellfile.add
  map <M-Down> ]s
  map <M-Up> [s
endif
set noshowmode
