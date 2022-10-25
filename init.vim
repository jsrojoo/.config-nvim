source ~/.config/nvim/config/defaults.vim
source ~/.config/nvim/config/plugins.vim

source ~/.config/nvim/config/colors.vim
source ~/.config/nvim/config/airline.vim
source ~/.config/nvim/config/signify.vim
source ~/.config/nvim/config/fzf.vim
source ~/.config/nvim/config/netrw.vim
source ~/.config/nvim/config/vimux.vim
source ~/.config/nvim/config/nrrw_rgn.vim
source ~/.config/nvim/config/coc.vim
source ~/.config/nvim/config/ghosttext.vim

let g:coc_global_extensions = [
      \'coc-marketplace',
      \'coc-sh',
      \'coc-pyright',
      \'coc-vimlsp',
      \'coc-tsserver',
      \'coc-ultisnips',
      \'coc-json',
      \'coc-vetur',
      \'coc-yaml',
      \'coc-sql', 
      \'coc-snippets',
      \'coc-pairs',
      \'coc-eslint',
      \'coc-docker',
      \'coc-markmap',
      \'coc-markdown-preview-enhanced',
      \'coc-webview',
      \'coc-pyright',
      \'coc-jedi',
      \]

" unblevable/quick-scope
let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']

" lsp for vue using vls for vetur
let g:LanguageClient_serverCommands = {
    \ 'vue': ['vls']
    \ }

" closetag config
" filenames like *.xml, *.html, *.xhtml, ...
" These are the file extensions where this plugin is enabled.
let g:closetag_filenames = '*.html,*.xhtml,*.phtml, *.vue, *.markdown'

" vimvue config
let g:vue_disable_pre_processors=1

" tag along config
let g:tagalong_filetypes = ['html', 'vue', 'md']

" markdown preview: browser to use when opening links / files like markdown
let g:mkdp_browser = 'firefox'
let g:mkdp_refresh_slow = 1
let g:mkdp_preview_options = {
    \ 'mkit': {},
    \ 'katex': {},
    \ 'uml': {},
    \ 'maid': {},
    \ 'disable_sync_scroll': 1,
    \ 'sync_scroll_type': 'top',
    \ 'hide_yaml_meta': 1,
    \ 'sequence_diagrams': {},
    \ 'flowchart_diagrams': {},
    \ 'content_editable': v:false
    \ }

" sneak hints
" let g:sneak#label = 1
" sneak search to use ignorecase and smartcase
let g:sneak#use_ic_scs = 1

highlight Sneak guifg=black guibg=red ctermfg=black ctermbg=red
highlight SneakScope guifg=red guibg=yellow ctermfg=red ctermbg=yellow
highlight SneakLabel guifg=red guibg=yellow ctermfg=black ctermbg=yellow

" Smalls plugin
" map normal-mode 's' for simple search
nmap s <Plug>(smalls)
" if you want to use smalls in visual/operator or both mode.
omap s <Plug>(smalls)
xmap s <Plug>(smalls)
let g:smalls_shade = 0
" vim smalls plugin, make space character as trigger
let g:smalls_jump_keys= ' ABCDEFGHIJKLMNOPQRSTUVWXYZ'

" vimux mappings
let g:tmux_navigator_no_mappings = 1

nnoremap <silent> <M-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <M-n> :TmuxNavigateDown<cr>
nnoremap <silent> <M-e> :TmuxNavigateUp<cr>
nnoremap <silent> <M-l> :TmuxNavigateRight<cr>

nmap [c <plug>(signify-next-hunk):SignifyHunkDiff<cr>
nmap ]c <plug>(signify-prev-hunk):SignifyHunkDiff<cr>
nmap <C-A-r> :SignifyHunkUndo<cr>

function! s:ToggleBlame()
    if &l:filetype ==# 'fugitiveblame'
        close
    else
        Git blame
    endif
endfunction

nnoremap <leader>bb :call <SID>ToggleBlame()<CR>

nnoremap <leader>cm :CocCommand markmap.create<cr>

" indent guide toggle
nnoremap <leader>id :IndentBlanklineToggle<cr>

" vim over helper functions and mappings
function! VisualFindAndReplace()
    :OverCommandLine%s/
endfunction

function! VisualFindAndReplaceWithSelection() range
    :'<,'>OverCommandLine s/
endfunction

nnoremap <Leader>fr :call VisualFindAndReplace()<CR>
xnoremap <Leader>fr :call VisualFindAndReplaceWithSelection()<CR>

" Open PDF as text
:command! -complete=file -nargs=1 Rpdf :r !pdftotext -nopgbrk <q-args> -
:command! -complete=file -nargs=1 Rpdf :r !pdftotext -nopgbrk <q-args> - |fmt -csw78

" firenvim
let g:firenvim_config = {'globalSettings': {},'localSettings': {'.*': {'takeover': 'never'},},}

command Exec set splitright | vnew | set filetype=sh | read !sh #

" indent blankline
let g:indent_blankline_use_treesitter = v:true
let g:indent_blankline_char_list = ['┊']

" configure treesitter
lua << EOF
require'nvim-treesitter.configs'.setup {
  ensure_installed = "all", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
  highlight = {
    enable = true,              -- false will disable the whole extension
    disable = { "c", "rust" },  -- list of language that will be disabled
  },
}
-- require'treesitter-context.config'.setup{
--     enable = true, -- Enable this plugin (Can be enabled/disabled later via commands)
-- }
-- require("lsp_lines").setup()
--
-- vim.diagnostic.config({
--   virtual_text = false,
--   virtual_lines = false,
-- })
for _, keymap in pairs({
  'zo',
  'zO',
  'zc',
  'zC',
  'za',
  'zA',
  'zv',
  'zx',
  'zX',
  'zm',
  'zM',
  'zr',
  'zR',
}) do
vim.api.nvim_set_keymap('n', keymap,  keymap .. '<CMD>IndentBlanklineRefresh<CR>', { noremap=true, silent=true })
end
EOF

let $GHOSTTEXT_SERVER_PORT = 4002
