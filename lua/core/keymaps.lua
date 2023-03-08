-----------------------------------------------------------
-- Define keymaps of Neovim and installed plugins.
-----------------------------------------------------------
local function map(mode, lhs, rhs, opts)
  local options = { noremap=true, silent=true }
  if opts then
    options = vim.tbl_extend('force', options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

local function nmap(lhs, rhs, opts)
  return map('n', lhs, rhs, opts)
end

local function nmapleader(lsh, rhs, opts)
  return nmap('<leader>' .. lsh, rhs, opts)
end
-----------------------------------------------------------
-- Neovim shortcuts
-----------------------------------------------------------

-- Disable arrow keys
map('', '<up>', '<nop>')
map('', '<down>', '<nop>')
map('', '<left>', '<nop>')
map('', '<right>', '<nop>')

-- Map space to leader key
map('', '<space>', '<leader>', { noremap=false })

-- Convenience keymaps
nmapleader('w', ':w!<cr>')
nmapleader('q', ':q!<cr>')
nmapleader(';', ':')

nmapleader('fs', ':set foldmethod=expr<CR>')
nmapleader('fi', ':set foldmethod=indent<CR>')

nmap('<C-h>', '<C-w>h')
nmap('<C-j>', '<C-w>j')
nmap('<C-k>', '<C-w>k')
nmap('<C-l>', '<C-w>l')
nmap('<C-w>v', '<C-w>v<C-w><C-w>')
nmap('<C-w>s', '<C-w>s<C-w><C-w>')

-- Remap increment
nmap('<C-s>', '<C-a>')

-----------------------------------------------------------
-- Plugin shortcuts
-----------------------------------------------------------
-- FZF

nmapleader('ag', ':Ag <space><cr>')
nmapleader('fg', ':Files<cr>')
nmapleader('<space>', ':Buffers<cr>')
nmapleader('fa', ':GFiles<cr>')
-- nmapleader('ff', ':<C-r>=expand("%:h")<CR>/<CR>')
nmapleader('ss', ':BLines<cr>')
nmapleader('cw', ':Rg <C-R><C-W><CR>')
nmapleader('fc', ':Commands<cr>')
nmapleader('fh', ':Helptags<cr>')

-- Smalls
map('n', 's', '<Plug>(smalls)', { noremap=false })
map('o', 's', '<Plug>(smalls)', { noremap=false })
map('x', 's', '<Plug>(smalls)', { noremap=false })
