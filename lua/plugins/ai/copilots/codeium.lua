---@type LazySpec
return {
	'Exafunction/codeium.nvim',
	lazy = false,
	cmd = 'Codeium',
	event = 'BufEnter',
	build = ':Codeium Auth',
	dependencies = {
		'nvim-lua/plenary.nvim',
		'hrsh7th/nvim-cmp',
	},
	opts = {
		virtual_text = {
			enabled = true,
			filetypes = {},
			default_filetype_enabled = true,
			manual = true,
			idle_delay = 75,
			virtual_text_priority = 65535,
			map_keys = true,
			accept_fallback = nil,
			key_bindings = {
				accept = '<C-Tab>',
				accept_word = '<C-l>',
				accept_line = false,
				clear = '<M-Bslash>',
				next = '<M-]>',
				prev = '<M-[>',
			},
		},
	},
}
