return {
  {
    "nvimtools/none-ls.nvim",
    dependencies = {
      "nvimtools/none-ls-extras.nvim",
    },
    config = function()
      local null_ls = require("null-ls")
      null_ls.setup({
        sources = {
          -- Formatters
          null_ls.builtins.formatting.stylua,
          null_ls.builtins.formatting.prettier,

          -- Linters
          require("none-ls.diagnostics.eslint_d"),
        }
      })
    end
  }
}
