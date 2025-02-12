
vim.g.mapleader = " "

-- Keybindings for Telescope
local builtin = require("telescope.builtin")

vim.keymap.set("n", "<leader>ff", function()
  builtin.find_files({})
end, { noremap = true, silent = true, desc = "Find Files in Current Directory" })

vim.keymap.set("n", "<leader>fg", function()
  builtin.live_grep({ cwd = vim.fn.getcwd() })  -- Restricts grep to the working directory
end, { noremap = true, silent = true, desc = "Live Grep in Project Folder" })

