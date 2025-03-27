local set = vim.keymap.set
local silent = { silent = true, expr = true }

--#region AI
set('i', '<C-;>', function()
	return vim.fn['codeium#CycleOrComplete']()
end, silent)

-- set('', '', function() end, silent)
--#endregion
