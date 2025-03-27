local utils = require('core.utils')

---@class NeovimSetup
local M = {}

M.options = {}

---@private
function M.parse_options(options)
	if options.language_packs then
		options.language_packs = utils.dedup_list(options.language_packs)
	end

	M.options = options
end

---@private
function M.vim_options()
	require('core.options')
end

---@private
function M.lazy_nvim()
	local lazy = require('core.lazynvim')

	lazy.bootstrap()
	lazy.setup()
end

---@private
function M.keymaps()
	require('core.keymaps')
end

function M.init(options)
	if options then
		M.parse_options(options)
	end

	M.vim_options()
	M.lazy_nvim()
	M.keymaps()

	if M.options.shell and vim.fn.executable(M.options.shell) then
		require('toggleterm').setup({ shell = M.options.shell })
	end
end

return M
