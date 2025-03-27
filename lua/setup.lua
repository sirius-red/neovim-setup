local utils = require('core.utils')

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

		if M.options.language_packs then
			M.options.language_packs = utils.dedup_list(M.options.language_packs)
		end
	end

	M.vim_options()
	M.lazy_nvim()
	M.keymaps()
end

return M
