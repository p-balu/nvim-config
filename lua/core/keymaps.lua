---------------------
-- General Keymaps -------------------

--File Pane
vim.keymap.set("n", "<leader>e", ":Neotree toggle<CR>", { noremap = true, silent = true, desc = "Toggle Neo-Tree" })
vim.keymap.set("n", "<leader>q", ":Neotree close<CR>", { noremap = true, silent = true, desc = "Close Neo-Tree" })
vim.keymap.set("n", "<leader>n", ":Neotree reveal<CR>",
  { noremap = true, silent = true, desc = "Reveal File in Neo-Tree" })
vim.keymap.set("n", "<leader>r", ":Neotree refresh<CR>", { noremap = true, silent = true, desc = "Refresh Neo-Tree" })


vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')

-- Buffer ----------------
-- vim.keymap.set("n", "<leader>bp", ":bl<CR>", { noremap = true, silent = true }) -- Switch to previous buffer
-- vim.keymap.set("n", "<leader>bn", ":bn<CR>", { noremap = true, silent = true }) -- Switch to next buffer
--
-- Window ----------------
vim.keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" })                   -- split window vertically
vim.keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" })                 -- split window horizontally
vim.keymap.set("n", "<leader>rw", "<C-w>w", { noremap = true, silent = true })                      -- Switch to next window
vim.keymap.set("n", "<leader>lw", "<C-w>W", { noremap = true, silent = true })                      -- Switch to previous window

vim.keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" })                    -- make split windows equal width & height
vim.keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" })               -- close current split window

vim.keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" })                     -- open new tab
vim.keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" })              -- close current tab
vim.keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" })                     --  go to next tab
vim.keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" })                 --  go to previous tab
vim.keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) --move current buffer to new tab

--  LSP Keybindings
vim.keymap.set('n', '<leader>gd', vim.lsp.buf.definition, { noremap = true, silent = true })
vim.keymap.set('n', '<leader>gr', vim.lsp.buf.references, { noremap = true, silent = true })
vim.keymap.set('n', '<leader>k', vim.lsp.buf.hover, { noremap = true, silent = true })
vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { noremap = true, silent = true })
-- Diagnostics Navigation
vim.keymap.set("n", "<leader>ne", function() vim.diagnostic.goto_next({ severity = "Error" }) end,
  { noremap = true, silent = true, desc = "Next Error" })
vim.keymap.set("n", "<leader>ni", function() vim.diagnostic.goto_next({ severity = "Info" }) end,
  { noremap = true, silent = true, desc = "Next Info" })
vim.keymap.set("n", "<leader>nw", function() vim.diagnostic.goto_next({ severity = "Warn" }) end,
  { noremap = true, silent = true, desc = "Next Warning" })

vim.keymap.set("n", "<leader>pe", function() vim.diagnostic.goto_prev({ severity = "Error" }) end,
  { noremap = true, silent = true, desc = "Previous Error" })
vim.keymap.set("n", "<leader>pi", function() vim.diagnostic.goto_prev({ severity = "Info" }) end,
  { noremap = true, silent = true, desc = "Previous Info" })
vim.keymap.set("n", "<leader>pw", function() vim.diagnostic.goto_prev({ severity = "Warn" }) end,
  { noremap = true, silent = true, desc = "Previous Warning" })

-- Formatter
vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, { noremap = true, silent = true })

-- Git Integration Keybinding
vim.keymap.set('n', '<leader>gs', vim.cmd.Git, {})

vim.keymap.set("n", "<leader>gp", ":Gitsigns preview_hunk<CR>", {})
vim.keymap.set("n", "<leader>gt", ":Gitsigns toggle_current_line_blame<CR>", {})


--Debugger
vim.keymap.set('n', '<F5>', function() require('dap').continue() end)
vim.keymap.set('n', '<F10>', function() require('dap').step_over() end)
vim.keymap.set('n', '<F11>', function() require('dap').step_into() end)
vim.keymap.set('n', '<F12>', function() require('dap').step_out() end)
vim.keymap.set('n', '<Leader>b', function() require('dap').toggle_breakpoint() end)
vim.keymap.set('n', '<Leader>B', function() require('dap').set_breakpoint() end)
vim.keymap.set('n', '<Leader>lp',
  function() require('dap').set_breakpoint(nil, nil, vim.fn.input('Log point message: ')) end)
vim.keymap.set('n', '<Leader>dr', function() require('dap').repl.open() end)
vim.keymap.set('n', '<Leader>dl', function() require('dap').run_last() end)
vim.keymap.set('n', '<Leader>dc', function() require('dap').continue() end)

-- Select All
vim.keymap.set("n", "<C-a>", "ggVG", { noremap = true, silent = true, desc = "Select All" })

-- Cut Selection (X Clipboard)
vim.keymap.set("v", "<C-x>", '"+d', { noremap = true, silent = true, desc = "Cut to Clipboard" })

-- Copy Selection (X Clipboard)
vim.keymap.set("v", "<C-c>", '"+y', { noremap = true, silent = true, desc = "Copy to Clipboard" })

-- Paste from Clipboard
vim.keymap.set("n", "<C-v>", '"+p', { noremap = true, silent = true, desc = "Paste from Clipboard" })
vim.keymap.set("i", "<C-v>", '<C-r>+', { noremap = true, silent = true, desc = "Paste from Clipboard in Insert Mode" })

vim.keymap.set("n", "<C-Z>", 'u', { noremap = true, silent = true, desc = "Undo" })
vim.keymap.set("n", "<C-Y>", 'u', { noremap = true, silent = true, desc = "Redo" })

--Comments

vim.keymap.set("n", "<C-/>", "gcc",
  { noremap = true, silent = true, desc = "Toggles the current line using linewise comment" })
vim.keymap.set("n", "<C-/>", "gbc",
  { noremap = true, silent = true, desc = "Toggles the current line using blockwise comment" })

vim.keymap.set("n", "<leader>cn", "gco",
  { noremap = true, silent = true, desc = "Insert comment to the next line and enters INSERT mode" })
vim.keymap.set("n", "<leader>cp", "gcO",
  { noremap = true, silent = true, desc = "Insert comment to the previous line and enters INSERT mode" })
vim.keymap.set("n", "<leader>ce", "gcA",
  { noremap = true, silent = true, desc = "Insert comment to end of the current line and enters INSERT mode" })


vim.keymap.set("v", "<C-/>", "gc", { noremap = true, silent = true, desc = "Toggles the region using linewise comment" })
vim.keymap.set("v", "<C-/>", "gb", { noremap = true, silent = true, desc = "Toggles the region using blockwise comment" })
