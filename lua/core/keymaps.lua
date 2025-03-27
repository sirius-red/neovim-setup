local set = vim.keymap.set

--#region AI
set('i', '<C-;>', function()
	require('codeium.virtual_text').cycle_or_complete()
end, { silent = true, expr = true })
--#endregion
