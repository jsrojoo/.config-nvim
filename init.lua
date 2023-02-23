require('impatient')

require('core/options')
require('core/keymaps')

require('packer_init')
require('lsp/lspconfig')
require('plugins/nvim-cmp')
-- require('plugins/fzf-lua')
-- require('plugins/telescope')
require('plugins/indent-blankline')
require('plugins/smalls')
require('plugins/quick-scope')
require('plugins/gitsigns')
require('plugins/luasnip')
require('plugins/firenvim')

-- plugins
require('nvim_comment').setup()
require('swagger-preview').setup({})
