local set = vim.keymap.set
local options = require('setup').options

--#region AI
set('i', '<C-;>', function()
	require('codeium.virtual_text').cycle_or_complete()
end, { silent = true, expr = true })

if options.copilot then
	set('n', '<Leader>a', '', { desc = 'AI' }) -- Create the "AI" category in which key
end
--#endregion
