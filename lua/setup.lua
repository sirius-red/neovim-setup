---@class NeovimSetup
local M = {}

M.options = {}

function M.vim_options()
	require('core.options')
end

function M.lazy_nvim()
	local lazy = require('core.lazynvim')

	lazy.bootstrap()
	lazy.setup()
end

function M.keymaps()
	require('core.keymaps')
end

function M.init(options)
	if options then
		M.options = options
	end

	M.vim_options()
	M.lazy_nvim()
	M.keymaps()
end

return M
