-- if true then return {} end -- WARN: COMMENT THIS LINE TO ACTIVATE THIS FILE

-- You can also add or configure plugins by creating files in this `plugins/` folder
-- Here are some examples:

---@type LazySpec
return {
	'andweeb/presence.nvim',
	{
		'goolord/alpha-nvim', -- Discord Rich Presence
		opts = function(_, opts)
			-- customize the dashboard header
			opts.section.header.val = {
				' ███▄    █ ▓█████  ▒█████   ██▒   █▓ ██▓ ███▄ ▄███▓',
				' ██ ▀█   █ ▓█   ▀ ▒██▒  ██▒▓██░   █▒▓██▒▓██▒▀█▀ ██▒',
				'▓██  ▀█ ██▒▒███   ▒██░  ██▒ ▓██  █▒░▒██▒▓██    ▓██░',
				'▓██▒  ▐▌██▒▒▓█  ▄ ▒██   ██░  ▒██ █░░░██░▒██    ▒██ ',
				'▒██░   ▓██░░▒████▒░ ████▓▒░   ▒▀█░  ░██░▒██▒   ░██▒',
				'░ ▒░   ▒ ▒ ░░ ▒░ ░░ ▒░▒░▒░    ░ ▐░  ░▓  ░ ▒░   ░  ░',
				'░ ░░   ░ ▒░ ░ ░  ░  ░ ▒ ▒░    ░ ░░   ▒ ░░  ░      ░',
				'   ░   ░ ░    ░   ░ ░ ░ ▒       ░░   ▒ ░░      ░   ',
				'         ░    ░  ░    ░ ░        ░   ░         ░   ',
				'                                ░                  ',
			}
			return opts
		end,
	},
	{
		'windwp/nvim-autopairs',
		config = function(plugin, opts)
			require('astronvim.plugins.configs.nvim-autopairs')(plugin, opts) -- include the default astronvim config that calls the setup call

			-- add more custom autopairs configuration such as custom rules
			local npairs = require('nvim-autopairs')
			local Rule = require('nvim-autopairs.rule')
			local cond = require('nvim-autopairs.conds')

			npairs.add_rules(
				{
					Rule('$', '$', { 'tex', 'latex' })
						:with_pair(cond.not_after_regex('%%')) -- don't add a pair if the next character is %
						:with_pair(cond.not_before_regex('xxx', 3)) -- don't add a pair if  the previous character is xxx
						:with_move(cond.none()) -- don't move right when repeat character
						:with_del(cond.not_after_regex('xx')) -- don't delete if the next character is xx
						:with_cr(cond.none()), -- disable adding a newline when you press <cr>
				}
				-- disable for .vim files, but it work for another filetypes
				-- Rule('a', 'a', '-vim')
			)
		end,
	},
}
