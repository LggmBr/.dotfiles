-- Set <space> as the leader key
-- See `:help mapleader`
--  NOTE: Must happen before plugins are loaded (otherwise wrong leader will be used)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Set to true if you have a Nerd Font installed and selected in the terminal
vim.g.have_nerd_font = true

require("custom.initlazy")
require("custom.keymaps")
require("custom.opts")
require("custom.autocommands")
-- vim: ts=2 sts=2 sw=2 et
