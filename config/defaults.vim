map <space> <leader>

" COLEMAK mappings
nnoremap K N
nnoremap L e
nnoremap e k
nnoremap k n
nnoremap n j

vnoremap K N
vnoremap L E
vnoremap e k
vnoremap k n
vnoremap n j

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
nnoremap <M-h> <C-w>h
nnoremap <M-n> <C-w>j
nnoremap <M-e> <C-w>k
nnoremap <M-i> <C-w>l
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

set updatetime=500
set signcolumn=no
set colorcolumn=75
set textwidth=75
set scrolloff=999

set list
set listchars=trail:~,tab:\ \ 
set statusline^=%{coc#status()}
set title titlestring=%{expand(\"%:p\")}

set foldmethod=expr
set foldexpr=nvim_treesitter#foldexpr()
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

autocmd InsertEnter * set cul
autocmd InsertLeave * set nocul

" Fix auto-indentation for YAML files
augroup yaml_fix
    autocmd!
    autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab indentkeys-=0# indentkeys-=<:>
augroup END

let g:python3_host_prog = '/home/i337/.pyenv/versions/neovim/bin/python'
let g:node_host_prog = '/tmp/fnm_multishells/24134_1654890666714/bin/node'
let g:coc_node_path = '/tmp/fnm_multishells/24134_1654890666714/bin/node'
" let g:python3_host_prog = '/home/i337/.pyenv/versions/3.7.0/bin/python'
" let g:node_host_prog = '/home/i337/.nvm/versions/node/v14.17.5/bin/node'
" let g:coc_node_path = '/home/i337/.nvm/versions/node/v14.17.5/bin/node'

" let g:node_host_prog = substitute(system('which node'), '\n', '', '')
" let g:coc_node_path = substitute(system('which node'), '\n', '', '')
