---------------------
-- General Keymaps -------------------

--File Pane
vim.keymap.set("n", "<leader>e", ":Neotree toggle<CR>", { noremap = true, silent = true, desc = "Toggle Neo-Tree" })
vim.keymap.set("n", "<leader>q", ":Neotree close<CR>", { noremap = true, silent = true, desc = "Close Neo-Tree" })
vim.keymap.set("n", "<leader>n", ":Neotree reveal<CR>", { noremap = true, silent = true, desc = "Reveal File in Neo-Tree" })
vim.keymap.set("n", "<leader>r", ":Neotree refresh<CR>", { noremap = true, silent = true, desc = "Refresh Neo-Tree" })

-- Buffer ----------------
-- vim.keymap.set("n", "<leader>bp", ":bp<CR>", { noremap = true, silent = true }) -- Switch to previous buffer
-- vim.keymap.set("n", "<leader>bn", ":bn<CR>", { noremap = true, silent = true }) -- Switch to next buffer

-- Window ---------------- 
vim.keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
vim.keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
vim.keymap.set("n", "<leader>rw", "<C-w>w", { noremap = true, silent = true }) -- Switch to next window
vim.keymap.set("n", "<leader>lw", "<C-w>W", { noremap = true, silent = true }) -- Switch to previous window

vim.keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
vim.keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window

vim.keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- open new tab
vim.keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- close current tab
vim.keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" }) --  go to next tab
vim.keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) --  go to previous tab
vim.keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) --move current buffer to new tab

--  LSP Keybindings
vim.keymap.set('n', '<leader>gd', vim.lsp.buf.definition, { noremap = true, silent = true })
vim.keymap.set('n', '<leader>gr', vim.lsp.buf.references, { noremap = true, silent = true })
vim.keymap.set('n', '<leader>K', vim.lsp.buf.hover, { noremap = true, silent = true })

-- Diagnostics Navigation
vim.keymap.set("n", "<leader>ne", function() vim.diagnostic.goto_next({ severity = "Error" }) end, { noremap = true, silent = true, desc = "Next Error" })
vim.keymap.set("n", "<leader>ni", function() vim.diagnostic.goto_next({ severity = "Info" }) end, { noremap = true, silent = true, desc = "Next Info" })
vim.keymap.set("n", "<leader>nw", function() vim.diagnostic.goto_next({ severity = "Warn" }) end, { noremap = true, silent = true, desc = "Next Warning" })

vim.keymap.set("n", "<leader>pe", function() vim.diagnostic.goto_prev({ severity = "Error" }) end, { noremap = true, silent = true, desc = "Previous Error" })
vim.keymap.set("n", "<leader>pi", function() vim.diagnostic.goto_prev({ severity = "Info" }) end, { noremap = true, silent = true, desc = "Previous Info" })
vim.keymap.set("n", "<leader>pw", function() vim.diagnostic.goto_prev({ severity = "Warn" }) end, { noremap = true, silent = true, desc = "Previous Warning" })

-- Git Integration Keybinding
vim.keymap.set('n', '<leader>gs', vim.cmd.Git, {})

--Comments

-- vim.keymap.set("n", "<leader>sl", "gcc", { noremap = false, silent = true, desc = "Comment single line" })
-- vim.keymap.set("v", "<leader>ml", "gc", { noremap = false, silent = true, desc = "Comment multiple lines" })

