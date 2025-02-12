-- Formatters
require('formatter').setup({
    filetype = {
      javascript = { require('formatter.filetypes.javascript').prettier },
      python = { require('formatter.filetypes.python').black },
      go = { require('formatter.filetypes.go').gofmt },
      lua = { require('formatter.filetypes.lua').stylua },
    }
  })
  