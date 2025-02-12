-- LSP Configurations
local lspconfig = require('lspconfig')
local mason=require("mason")
lspconfig.ts_ls.setup{}
lspconfig.pyright.setup{}
lspconfig.gopls.setup{}
lspconfig.lua_ls.setup{}
lspconfig.html.setup{}
lspconfig.cssls.setup{}
lspconfig.jsonls.setup{}
lspconfig.yamlls.setup{}
