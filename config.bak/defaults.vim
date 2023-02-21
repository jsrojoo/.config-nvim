map <space> <leader>

" helpers
nnoremap <leader>w :w!<cr>
nnoremap <leader>q :q!<cr>

" remap increment
nnoremap <C-s> <C-a>

nnoremap <leader>w :w!<cr>
nnoremap <leader>q :q!<cr>
nnoremap <leader>; :

nnoremap <leader>fs :set foldmethod=expr<CR>
nnoremap <leader>fi :set foldmethod=indent<CR>

nnoremap Q @q

" easy split movement
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <C-w>v <C-w>v<C-w><C-w>
nnoremap <C-w>s <C-w>s<C-w><C-w>
nnoremap <C-w>r <C-w>s<C-w><C-w>

" remove brackets (~) on empty lines
let &fcs='eob: '

set expandtab
set shiftwidth=2
set softtabstop=2

set timeoutlen=1000 ttimeoutlen=0

set ignorecase " ignorecasing
set smartcase  " better case-sensitivity when searching

set number  " always show current line number
set relativenumber

set updatetime=100
set signcolumn=yes:1
set colorcolumn=75
set textwidth=75
set scrolloff=999

set list
set listchars=trail:~,tab:\ \ 
" set statusline^=%{coc#status()}
set title titlestring=%{expand(\"%:p\")}

set foldmethod=expr
set foldexpr=nvim_treesitter#foldexpr()
set nofoldenable
set hidden
set mouse:a

set nowrap
set nobackup  " no backup or swap file, live dangerously
set noswapfile  " swap files give annoying warning
set nowrapscan " stop incremental search at EOF
set noshowmode  " keep command line clean
" set noshowcmd  " keep command line clean
set hlsearch
set pumheight=3

" use vertical cursor on insert mode
set guicursor=i:ver1
" enable cursor blinking
set guicursor+=a:blinkon1

set guifont=JetBrains\ Mono

" use system clipboard by default
set clipboard=unnamedplus

" no line breaks
set textwidth=0 wrapmargin=0

" remove .... in folds
set fillchars=fold:\ 

set completeopt=menu,menuone,noselect

autocmd InsertEnter * set cul
autocmd InsertLeave * set nocul

" Fix auto-indentation for YAML files
augroup yaml_fix
    autocmd!
    autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab indentkeys-=0# indentkeys-=<:>
augroup END

let g:python3_host_prog = '/Users/joseph.rojo/.pyenv/versions/3.9.16/bin/python'
" let g:node_host_prog = '/Users/joseph.rojo/Library/Caches/fnm_multishells/20917_1675778331939/bin/node'

if (has("nvim"))
  "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif
"For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
"Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
" < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
if (has("termguicolors"))
  set termguicolors
endif

syntax on

colorscheme nord

highlight Normal guibg=NONE ctermbg=NONE
highlight Search guibg=NONE guifg=NONE
