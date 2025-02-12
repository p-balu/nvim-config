-- Enable Snippets for Various Languages
require('luasnip.loaders.from_vscode').lazy_load({
    paths = {
      "~/.config/nvim/snippets/javascript.json",
      "~/.config/nvim/snippets/go.json",
      "~/.config/nvim/snippets/react.json",
      "~/.config/nvim/snippets/nodejs.json",
      "~/.config/nvim/snippets/python.json",
      "~/.config/nvim/snippets/lua.json"
    }
  })
  