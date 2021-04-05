set nocompatible

" -----Plugins-----

call plug#begin('~/.vim/plugged')
" Autocomplete Auto Popup
Plug 'vim-scripts/AutoComplPop'
" GruBox Theme
Plug 'morhetz/gruvbox'
" Indented Line Visualize
Plug 'Yggdroot/indentLine'
" Fuzzy File Finder
Plug 'ctrlpvim/ctrlp.vim'
" Active Linting
Plug 'dense-analysis/ale'
" Status Line
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" NerdTree file explorer
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ryanoasis/vim-devicons'
" Self Explanitory Plugs
Plug 'mattn/emmet-vim'

" --Languages--
Plug 'posva/vim-vue'
Plug 'othree/html5.vim'

call plug#end()

" -----Plugin and Vim settings-----

filetype plugin on
syntax on
set hidden
set shiftwidth=2
set softtabstop=2
set expandtab
set encoding=UTF-8
set guifont=Lilex\ 13
set number
set relativenumber
set wrap!
" Fancy icon (eg => ⇒)
set conceallevel=1

" Style
let g:gruvbox_italic=1
let g:gruvbox_improved_strings=1
let g:gruvbox_improved_warnings=1
let g:gruvbox_contrast_dark='hard'
let g:airline_theme='deus'
let g:airline_powerline_fonts=1
let g:indentLine_setColors = 0
let g:indentLine_char = '▏'
autocmd vimenter * ++nested colorscheme gruvbox
set bg=dark
" Vim Autocomplete
set complete+=kspell
set completeopt=menuone,longest
" Removes  autocomplete logging
set shortmess+=c
" Vim-Vue
let g:vue_pre_processors = ['typescript', 'scss', 'sass']
" Nerd tree
let NERDTreeShowHidden=1

" -----Shortcuts-----

" Alt + Arrow window shortcuts
nmap <silent> <A-Up> :wincmd k<CR>
nmap <silent> <A-Down> :wincmd j<CR>
nmap <silent> <A-Left> :wincmd h<CR>
nmap <silent> <A-Right> :wincmd l<CR>
" Ctrl+l clear HL
nnoremap <C-L> :nohl<CR><C-L>

" NerdTree Toggle
nmap <F3> :NERDTreeToggle<CR>
