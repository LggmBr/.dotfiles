-- Set some aliafes for more compat declarations
local set = vim.keymap.set
local telescope = require("telescope.builtin")
local lsp = vim.lsp.buf

-- Telescope Binds
set( "n", "<leader>ff", telescope.find_files )
set( "n", "<leader>fg", telescope.live_grep )
set( "n", "<leader>fs", telescope.grep_string )
set( "n", "<leader>rf", telescope.oldfiles )

-- LSP remaps
set( "n", "<C-f>", lsp.format )
set( "n", "<leader>gd", lsp.definition )
set( "n", "<leader>ca", lsp.code_action )
set( "n", "<leader>?", lsp.hover )

-- Neo-Tree
set( "n", "<leader>no", ":Neotree filesystem reveal left<cr>" )
set( "n", "<leader>nc", ":Neotree filesystem close<cr>" )
