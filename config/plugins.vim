call plug#begin('~/.config/nvim/plugged')
" Navigation
Plug 'junegunn/fzf', { 'do': { -> fzf#install(1337) } }
Plug 'junegunn/fzf.vim'
" Plug 'yuttie/comfortable-motion.vim'

" Completions
Plug 'AndrewRadev/tagalong.vim'
Plug 'honza/vim-snippets'
Plug 'alvan/vim-closetag'
Plug 'moll/vim-node'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Plug 'pangloss/vim-javascript'

" Syntax | Indents
Plug 'dominikduda/vim_current_word'
Plug 'Vimjas/vim-python-pep8-indent'
Plug 'posva/vim-vue'
Plug 'lukas-reineke/indent-blankline.nvim'

" Utilities
Plug 'glacambre/firenvim', { 'do': { _ -> firenvim#install(0) } }
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
Plug 'benmills/vimux'
Plug 'chrisbra/NrrwRgn'
Plug 'christoomey/vim-tmux-navigator'
Plug 'dhruvasagar/vim-table-mode'
Plug 't9md/vim-smalls'
Plug 'metakirby5/codi.vim'
Plug 'osyo-manga/vim-over'
Plug 'tomtom/tcomment_vim'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-obsession'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'unblevable/quick-scope'
Plug 'wellle/targets.vim'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
Plug 'heavenshell/vim-jsdoc', {
  \ 'for': ['javascript', 'javascript.jsx','typescript'],
  \ 'do': 'make install'
\}
Plug 'romgrk/nvim-treesitter-context'
Plug 'ziontee113/color-picker.nvim'
" Plug 'subnut/nvim-ghost.nvim', {'do': ':call nvim_ghost#installer#install()'}
" Plug 'https://git.sr.ht/~whynothugo/lsp_lines.nvim'

" Aestetics
Plug 'mhinz/vim-signify'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'norcalli/nvim-colorizer.lua'

" Colorschemes
Plug 'drewtempelmeyer/palenight.vim'
Plug 'shaunsingh/nord.nvim'

Plug 'roxma/vim-tmux-clipboard'

call plug#end()

