-- Formatter and Linters
return {
  "nvimtools/none-ls.nvim",
  "mantoni/eslint_d.js",
  config = function()
    local null_ls = require("null-ls")
    null_ls.setup({
      sources = {
        null_ls.builtins.formatting.stylua,
        null_ls.builtins.formatting.prettier,
        null_ls.builtins.diagnostics.eslint_d,
        null_ls.builtins.formatting.rubocop,
        null_ls.builtins.formatting.sqlfmt,
        null_ls.builtins.formatting.usort,
        null_ls.builtins.formatting.black

      },
    })
     require('lint').linters_by_ft = {
              javascript = {'eslint_d'},
              typescript = {'eslint_d'},
          }
    vim.api.nvim_create_autocmd("BufWritePre", {
      pattern = { "*.js", "*.ts", "*.jsx", "*.tsx", "*.json" },
      callback = function()
        vim.lsp.buf.format()
      end,
    })
  end

}
