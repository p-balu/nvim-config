-- Set Leader Key
vim.g.mapleader = " "

-- Font
vim.opt.guifont = "JetBrainsMono Nerd Font:h14"

-- Disable Netrw (Neovim’s built-in file explorer)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- Lazy.nvim Setup
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Imports
require("lazy").setup("plugins")
require("core.options")
require("core.keymaps")


--  Fix Line Numbers (Always Show Absolute Numbers)
vim.opt.number = true
vim.opt.relativenumber = false -- Enables relative line numbers

--  Toggle relative numbers only in Normal Mode
vim.api.nvim_create_autocmd("InsertEnter", {
  pattern = "*",
  callback = function()
    vim.opt.relativenumber = false -- Disable relative numbers in Insert mode
  end,
})

vim.api.nvim_create_autocmd("InsertLeave", {
  pattern = "*",
  callback = function()
    vim.opt.relativenumber = false -- Re-enable relative numbers in Normal mode
  end,
})

