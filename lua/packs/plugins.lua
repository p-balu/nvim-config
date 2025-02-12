-- Plugin List
return{
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
  { "catppuccin/nvim", name = "catppuccin", priority = 1000,

},
  { 'williamboman/mason.nvim',
config=function()
  require("mason").setup()
end,
},
  { 'williamboman/mason-lspconfig.nvim' },
  { 'mfussenegger/nvim-lint' },
  { 'mhartington/formatter.nvim' },
{
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim",
  }
},
  {
  "tpope/vim-commentary"
},
config = function()
    local cmp = require("cmp")
    cmp.setup({
      sources = {
        { name = "nvim_lsp" },
        { name = "buffer" },
        { name = "path" }
      },
      mapping = cmp.mapping.preset.insert({
        ["<Tab>"] = cmp.mapping.select_next_item(),
        ["<S-Tab>"] = cmp.mapping.select_prev_item(),
        ["<CR>"] = cmp.mapping.confirm({ select = true })
      })
    })
  end
}


