return {
	{
		"sylvanfranklin/omni-preview.nvim",
		dependencies = {
			-- Typst
			{ "chomosuke/typst-preview.nvim", lazy = true },
			-- CSV
			{ "hat0uma/csvview.nvim", lazy = true },
			{ "toppair/peek.nvim", lazy = true, build = "deno task --quiet build:fast" },
		},
		config = function()
			require("omni-preview").setup()
			require("peek").setup({ app = "browser" })
		end,
		opts = {},
	},
	{
		"toppair/peek.nvim",
		event = { "VeryLazy" },
		build = "deno task --quiet build:fast",
		config = function()
			require("peek").setup()
			vim.api.nvim_create_user_command("PeekOpen", require("peek").open, {})
			vim.api.nvim_create_user_command("PeekClose", require("peek").close, {})
		end,
	},
}
