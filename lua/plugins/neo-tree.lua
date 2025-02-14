--[[ return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  config = function()
    -- Keybindings
    vim.keymap.set("n", "<leader>e", ":Neotree filesystem reveal left<CR>", {})
    vim.keymap.set("n", "<leader>bf", ":Neotree buffers reveal float<CR>", {})

    -- Auto Open Neo-Tree When Neovim Starts
    vim.api.nvim_create_autocmd("VimEnter", {
      callback = function()
        require("neo-tree.command").execute({ toggle = true, dir = vim.loop.cwd() })
      end,
    })

    -- Auto Close Neovim if Neo-Tree is the Only Window
    vim.api.nvim_create_autocmd("BufEnter", {
      nested = true,
      callback = function()
        if #vim.api.nvim_list_wins() == 1 and vim.bo.filetype == "neo-tree" then
          vim.cmd("quit")
        end
      end,
    })
  end,
} ]]
return {
  "stevearc/oil.nvim",
  dependencies = { { "echasnovski/mini.icons","nvim-tree/nvim-web-devicons",opts = {} } },
  config = function ()
    require("oil").setup()
  end
}
