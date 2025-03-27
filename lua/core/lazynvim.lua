--- @class LazyNvim
local M = {}

M.path = vim.env.LAZY or vim.fn.stdpath('data') .. '/lazy/lazy.nvim'

M.repo = 'https://github.com/folke/lazy.nvim'

M.spec = {
	{
		'AstroNvim/AstroNvim',
		version = '^4',         -- Remove version tracking to elect for nightly AstroNvim
		import = 'astronvim.plugins',
		opts = {                -- AstroNvim options must be set here with the `import` key
			mapleader = ' ',    -- This ensures the leader key must be configured before Lazy is set up
			maplocalleader = ',', -- This ensures the localleader key must be configured before Lazy is set up
			icons_enabled = true, -- Set to false to disable icons (if no Nerd Font is available)
			pin_plugins = nil,  -- Default will pin plugins when tracking `version` of AstroNvim, set to true/false to override
			update_notifications = true, -- Enable/disable notification about running `:Lazy update` twice to update pinned plugins
		},
	},
	{ import = 'plugins' },
}

M.config = {
	install = { colorscheme = { 'catppuccin-mocha', 'astrotheme', 'habamax' } },
	ui = { backdrop = 100 },
	performance = {
		rtp = {
			disabled_plugins = {
				'gzip',
				'netrwPlugin',
				'tarPlugin',
				'tohtml',
				'zipPlugin',
			},
		},
	},
}

function M.bootstrap()
	if not (vim.env.LAZY or (vim.uv or vim.loop).fs_stat(M.path)) then
		vim.fn.system({
			'git',
			'clone',
			'--filter=blob:none',
			'--branch=stable',
			M.repo,
			M.path,
		})
	end

	vim.opt.rtp:prepend(M.path)

	if not pcall(require, 'lazy') then
		vim.api.nvim_echo({
			{ ('Unable to load lazy from: %s\n'):format(M.path), 'ErrorMsg' },
			{ 'Press any key to exit...',                        'MoreMsg' },
		}, true, {})
		vim.fn.getchar()
		vim.cmd.quit()
	end
end

function M.setup()
	require('lazy').setup(M.spec, M.config)
end

return M
