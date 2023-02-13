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