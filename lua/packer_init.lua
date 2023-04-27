-- Automatically install packer
local fn = vim.fn
local o = vim.o
local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({
    'git',
    'clone',
    '--depth',
    '1',
    'https://github.com/wbthomason/packer.nvim',
    install_path
  })

  o.runtimepath = fn.stdpath('data') .. '/site/pack/*/start/*,' .. o.runtimepath
end

-- Autocommand that reloads neovim whenever you save the packer_init.lua file
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost packer_init.lua source <afile> | PackerSync
  augroup end
]]

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, 'packer')

if not status_ok then
  return
end

-- Install plugins
return packer.startup(function(use)
 -- Add you plugins here:
  use 'wbthomason/packer.nvim' -- packer can manage itself

  use 'neovim/nvim-lspconfig'
  use "nvim-lua/plenary.nvim"

  -- speed up loading lua modules in neovim
  use 'lewis6991/impatient.nvim'

  -- File explorer
  use 'kyazdani42/nvim-tree.lua'
  -- Icons
  -- use 'kyazdani42/nvim-web-devicons'

  -- Indent line
  use 'lukas-reineke/indent-blankline.nvim'

  -- Indent python
  use 'Vimjas/vim-python-pep8-indent'

  -- use 'ibhagwan/fzf-lua'
  use { "junegunn/fzf", run = ":call fzf#install()" }
  use 'junegunn/fzf.vim'

  use {
    'nvim-treesitter/nvim-treesitter',
    run = function()
      require('nvim-treesitter.install').update({ with_sync = true })
    end,
  }

  -- Autocomplete
  use {
    'hrsh7th/nvim-cmp',
    requires = {
      'L3MON4D3/LuaSnip',
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-path',
      'hrsh7th/cmp-buffer',
      'saadparwaiz1/cmp_luasnip',
    },
  }

  use 'jiangmiao/auto-pairs'
  use 'terrortylor/nvim-comment'
  use 'lewis6991/gitsigns.nvim'

  -- utilities
  use 't9md/vim-smalls'
  use 'tpope/vim-fugitive'
  use 'tpope/vim-obsession'
  use 'tpope/vim-repeat'
  use 'tpope/vim-surround'
  use 'unblevable/quick-scope'
  use 'wellle/targets.vim'
  use 'christoomey/vim-tmux-navigator'
  use 'dhruvasagar/vim-table-mode'
  use {
    'psf/black',
    branch = 'stable'
  }
  use 'jose-elias-alvarez/null-ls.nvim'
  use 'jose-elias-alvarez/typescript.nvim'
  use 'MunifTanjim/eslint.nvim'
  use 'andythigpen/nvim-coverage'


  use "rafamadriz/friendly-snippets"

  use {
    "glacambre/firenvim",
    run = function()
      vim.fn["firenvim#install"](0)
    end,
  }

  use {
      "vinnymeller/swagger-preview.nvim",
      run = "npm install -g swagger-ui-watcher",
  }

  use {
    "kiyoon/jupynium.nvim",
    run = "pip3 install --user .",
    build = "conda run --no-capture-output -n jupynium pip install .",
  }

  use({
    "iamcco/markdown-preview.nvim",
    run = function() vim.fn["mkdp#util#install"]() end,
  })

  use 'mfussenegger/nvim-dap'
  use 'mfussenegger/nvim-dap-python'

  use 'tzachar/local-highlight.nvim'

  use 'shaunsingh/nord.nvim'
  use 'levouh/tint.nvim'
  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
