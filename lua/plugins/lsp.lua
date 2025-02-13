-- LSP Configuration
return {
  -- Mason (LSP Manager)
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end,
  },

  -- Mason LSP Config
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = { "lua_ls", "ts_ls", "cssls", "html", "jsonls" }, --  Fixed LSP names
      })
    end,
  },

  -- Completion Plugin (nvim-cmp)
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
      "L3MON4D3/LuaSnip",
    },
    config = function()
      local cmp = require("cmp")
      cmp.setup({
        mapping = cmp.mapping.preset.insert({
          ["<Tab>"] = cmp.mapping.select_next_item(),
          ["<S-Tab>"] = cmp.mapping.select_prev_item(),
          ["<CR>"] = cmp.mapping.confirm({ select = true }),
        }),
        sources = {
          { name = "nvim_lsp" },
          { name = "buffer" },
          { name = "path" },
        },
      })
    end,
  },

  -- LSP Configuration
  {
    "neovim/nvim-lspconfig",
    dependencies = { "hrsh7th/cmp-nvim-lsp" },
    config = function()
      local lspconfig = require("lspconfig")
      local capabilities = require("cmp_nvim_lsp").default_capabilities() --  Ensure cmp works with LSP

      -- Lua
      lspconfig.lua_ls.setup({
        capabilities = capabilities
      })

      -- TypeScript Server
      lspconfig.ts_ls.setup({
        capabilities = capabilities
      })

      --  CSS
      lspconfig.cssls.setup({
        capabilities = capabilities
      })

      --  HTML
      lspconfig.html.setup({
        capabilities = capabilities
      })

      --  JSON
      lspconfig.jsonls.setup({
        capabilities = capabilities
      })
    end,
  },
}

