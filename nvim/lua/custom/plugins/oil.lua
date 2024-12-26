return {
	"stevearc/oil.nvim",
	opts = {},
	dependencies = { { "nvim-tree/nvim-web-devicons" } },
	config = function()
		require("oil").setup({
			default_file_explorer = true,
			columns = { "icon" },
			keymaps = {},
		})
		vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
	end,
}
