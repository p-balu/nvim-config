local plugins= require("lua.packs.plugins")

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

require("lazy").setup(plugins)
require("lua.packs.plugins.plugins")

-- Enable absolute and relative numbers dynamically
vim.opt.number = true
vim.opt.relativenumber = false

-- Toggle relative numbers when moving
vim.api.nvim_create_autocmd({ "InsertEnter", "WinEnter" }, {
  callback = function()
    vim.opt.relativenumber = false
  end,
})


