

--[[	This is the package manager for nvim used in kickstart.nvim.
--	https://github.com/folke/lazy.nvim
--	`:help lazy.nvim.txt` for more info
--]]
local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system {
		'git',
		'clone',
		'--filter=blob:none',
		'https://github.com/folke/lazy.nvim.git',
		'--branch=stable',
		lazypath,
	}
end

vim.opt.rtp:prepend(lazypath)

--[[	Configure plugins here.
--	To check status:
--		:Lazy
--	Press `?` in that menu for help, :q to close it
--	
--	To update plugins:
--		:Lazy update
--]]
require('lazy').setup({
	--	{ 'folke/which-key.nvim', opts = {} }, -- Shows pending keybinds
	'tpope/vim-fugitive',
	'tpope/vim-rhubarb',
	require 'managed-plugins/mini',
	require 'managed-plugins/kanagawa',
	require 'managed-plugins/telescope',
	require 'managed-plugins/lsp-config',
	require 'managed-plugins/cmp',
	require 'managed-plugins/treesitter',

	--	NOTE: The import below can automatically add your own plugins, configuration, etc from `lua/custom/plugins/*.lua`
	--		This is the easiest way to modularize your config.
	--
	--	Uncomment the following line and add your plugins to `lua/custom/plugins/*.lua` to get going.
	--	For additional information, see `:help lazy.nvim-lazy.nvim-structuring-your-plugins`
	-- { import = 'custom.plugins' },
}, {
		ui = {
			-- If you are using a Nerd Font: set icons to an empty table which will use the
			-- default lazy.nvim defined Nerd Font icons, otherwise define a unicode icons table
			icons = vim.g.have_nerd_font and {} or {
				cmd = '⌘',
				config = '🛠',
				event = '📅',
				ft = '📂',
				init = '⚙',
				keys = '🗝',
				plugin = '🔌',
				runtime = '💻',
				require = '🌙',
				source = '📄',
				start = '🚀',
				task = '📌',
				lazy = '💤 ',
			},
		},
	})
