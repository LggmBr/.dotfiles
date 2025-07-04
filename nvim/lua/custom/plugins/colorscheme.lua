-- return {
-- 	"catppuccin/nvim",
-- 	priority = 1000, -- Make sure to load this before all the other start plugins.
-- 	init = function()
-- 		require("catppuccin").setup({
-- 			transparent_background = true,
-- 		})
-- 		-- Load the colorscheme here.
-- 		-- Like many other themes, this one has different styles, and you could load
-- 		-- any other, such as 'tokyonight-storm', 'tokyonight-moon', or 'tokyonight-day'.
-- 		vim.cmd.colorscheme("catppuccin-mocha")
--
-- 		-- You can configure highlights by doing something like:
-- 		vim.cmd.hi("Comment gui=none")
-- 	end,
-- }

return {
	"folke/tokyonight.nvim",
	lazy = false,
	priority = 1000,
	opts = {
		style = "moon",
		transparent = true,
		plugins = {
			all = true,
		},
	},
	config = function(_, opts)
		require("tokyonight").setup(opts)
		vim.cmd([[colorscheme tokyonight]])
	end,
}
