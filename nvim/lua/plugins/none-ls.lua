return {
  {
    "nvimtools/none-ls.nvim",
    config = function()
      local null_ls = require("null-ls")
      null_ls.setup({
	sources = {
    -- Formatters
	  null_ls.builtins.formatting.stylua,
	  null_ls.builtins.formatting.prettier,

    -- Linters
    null_ls.builtins.diagnostics.eslint_d,
	}
      })
    end
  }
}
