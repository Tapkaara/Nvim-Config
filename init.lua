--[[	Set the leader key to spacebar.
	This should happen before including plugins,
	otherwise they will use the wrong leader map.
--]]
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Set to true only if a Nerd font is installed
vim.g.have_nerd_font = true


--[[	Setting options
--	:help vim.o
--]]

--	Disable the mouse
vim.o.mouse = ''

--	Line numbers
vim.o.number = true
vim.o.relativenumber = true

--	Always use sign column
vim.o.signcolumn = 'yes'

--	Copy indent from previous line, useful for alignment with spaces
vim.o.copyindent = true

--	Formatting stuff
vim.o.tabstop = 4
vim.o.shiftwidth = 4

--	Cursor stuff
vim.o.cursorline = true
vim.o.scrolloff = 5

--[[	Basic Keymaps	]]
vim.o.hlsearch = true
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')


--[[	All the stuff managed by lazy	]]
require 'tap-lazy'
