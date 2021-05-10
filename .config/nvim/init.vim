call plug#begin(stdpath('data') . '/init.vim')
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-lua/completion-nvim'
Plug 'joshdick/onedark.vim'
Plug 'tpope/vim-fugitive'
Plug 'sheerun/vim-polyglot'
Plug 'ms-jpq/chadtree', {'branch': 'chad', 'do': 'python3 -m chadtree deps'}
call plug#end()

lua << EOF
  local nvim_lsp = require('lspconfig')
  nvim_lsp.bashls.setup{on_attach=require'completion'.on_attach}
  nvim_lsp.dockerls.setup{on_attach=require'completion'.on_attach}
  nvim_lsp.yamlls.setup{on_attach=require'completion'.on_attach}
  nvim_lsp.pyright.setup{on_attach=require'completion'.on_attach}
  nvim_lsp.vls.setup{on_attach=require'completion'.on_attach}
  nvim_lsp.tsserver.setup{on_attach=require'completion'.on_attach}
  nvim_lsp.cssls.setup{on_attach=require'completion'.on_attach}
  local capabilities = vim.lsp.protocol.make_client_capabilities()
  capabilities.textDocument.completion.completionItem.snippetSupport = true
  nvim_lsp.html.setup {
    capabilities = capabilities,
    on_attach=require'completion'.on_attach
  }
  nvim_lsp.jsonls.setup{on_attach=require'completion'.on_attach}
EOF

syntax on
colorscheme onedark
set background=dark
set title
set expandtab
set tabstop=2
set shiftwidth=2
set linebreak
set number
set wrap!
set relativenumber
set completeopt=menuone,noinsert,noselect
let g:completion_matching_strategy_list = ['exact', 'substring', 'fuzzy']
set nospell spelllang=en_us

nnoremap <SPACE> <Nop>
let mapleader=" "
nmap <silent> <leader><Left> :wincmd h<cr>
nmap <silent> <leader><Down> :wincmd j<cr>
nmap <silent> <leader><Up> :wincmd k<cr>
nmap <silent> <leader><Right> :wincmd l<cr>
nnoremap <Tab> <cmd>CHADopen<cr>

nmap <silent> <leader>l :noh
nnoremap <F6> <cmd>set invspell<cr>
inoremap <F6> <C-O><cmd>set invspell<cr>

nmap <leader>gl :diffget //3<cr>
nmap <leader>gh :diffget //2<cr>
nmap <leader>gs :G<cr>

let g:markdown_fenced_languages = ['bash=sh', 'javascript', 'js=javascript', 'json=javascript', 'typescript', 'ts=typescript', 'php', 'html', 'css']
