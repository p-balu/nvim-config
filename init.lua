-- Set Leader Key
vim.g.mapleader = " "

-- Set Indentation
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")

-- Lazy.nvim Plugin Manager Setup
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git", "clone", "--filter=blob:none", "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", lazypath
  })
end
vim.opt.rtp:prepend(lazypath)

local status_ok, lazy = pcall(require, "lazy")
if not status_ok then
  return
end

-- Plugin List
local plugins = {
  { 'nvim-telescope/telescope.nvim', tag = '0.1.6', dependencies = { 'nvim-lua/plenary.nvim' } },
  { 'hrsh7th/nvim-cmp' },
  { 'hrsh7th/cmp-nvim-lsp' },
  { 'hrsh7th/cmp-buffer' },
  { 'hrsh7th/cmp-path' },
  { 'saadparwaiz1/cmp_luasnip' },
  { 'L3MON4D3/LuaSnip' },
  { 'rafamadriz/friendly-snippets' },
  { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' },
  { 'nvim-lualine/lualine.nvim', requires = { 'kyazdani42/nvim-web-devicons', opt = true } },
  { 'tpope/vim-fugitive' },
  { 'neovim/nvim-lspconfig' },
  { 'onsails/lspkind.nvim' },
  { 'hrsh7th/cmp-cmdline' },
  { 'hrsh7th/cmp-nvim-lua' },
  { 'mfussenegger/nvim-dap' },
  { 'jose-elias-alvarez/null-ls.nvim' },
  { 'williamboman/mason.nvim' },
  { 'williamboman/mason-lspconfig.nvim' },
  { 'mfussenegger/nvim-lint' },
  { 'mhartington/formatter.nvim' }
}

lazy.setup(plugins, {})

-- Keybindings for Telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<C-p>', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})

-- LSP Configurations
local lspconfig = require('lspconfig')
lspconfig.ts_ls.setup{}
lspconfig.pyright.setup{}
lspconfig.gopls.setup{}
lspconfig.lua_ls.setup{}
lspconfig.html.setup{}
lspconfig.cssls.setup{}
lspconfig.jsonls.setup{}
lspconfig.yamlls.setup{}

-- Linters
require('lint').linters_by_ft = {
  javascript = {'eslint'},
  python = {'flake8'},
  go = {'golangci-lint'},
  lua = {'luacheck'},
}

-- Formatters
require('formatter').setup({
  filetype = {
    javascript = { require('formatter.filetypes.javascript').prettier },
    python = { require('formatter.filetypes.python').black },
    go = { require('formatter.filetypes.go').gofmt },
    lua = { require('formatter.filetypes.lua').stylua },
  }
})

-- Debugger Setup
local dap = require('dap')
-- require('dap-go').setup() (Commented out until installed)
-- require('dap-python').setup('~/.virtualenvs/debugpy/bin/python')

-- LSP Keybindings
vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { noremap = true, silent = true })
vim.keymap.set('n', 'gr', vim.lsp.buf.references, { noremap = true, silent = true })
vim.keymap.set('n', 'K', vim.lsp.buf.hover, { noremap = true, silent = true })

-- Lualine Setup
require('lualine').setup {
  options = { theme = 'auto' }
}

-- Git Integration Keybinding
vim.keymap.set('n', '<leader>gs', vim.cmd.Git, {})

-- Enable Snippets for Various Languages
require('luasnip.loaders.from_vscode').lazy_load({
  paths = {
    "~/.config/nvim/snippets/javascript.json",
    "~/.config/nvim/snippets/go.json",
    "~/.config/nvim/snippets/react.json",
    "~/.config/nvim/snippets/nodejs.json",
    "~/.config/nvim/snippets/python.json",
    "~/.config/nvim/snippets/lua.json"
  }
})


