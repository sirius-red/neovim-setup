local language_packs = require('setup').options.language_packs

---@type LazySpec
local spec = {
	{ 'AstroNvim/astrocommunity' },
	{ import = 'astrocommunity.terminal-integration.toggleterm-manager-nvim' },
	{ import = 'astrocommunity.scrolling.nvim-scrollbar' },
	{ import = 'astrocommunity.scrolling.mini-animate' },
	{ import = 'astrocommunity.register.nvim-neoclip-lua' },
	{ import = 'astrocommunity.lsp.nvim-lsp-file-operations' },
}

if language_packs and type(spec) ~= 'string' then
	for _, v in ipairs(language_packs) do
		table.insert(spec, { import = 'astrocommunity.pack.' .. v })

		if v == 'markdown' then
			table.insert(spec, { import = 'astrocommunity.markdown-and-latex.render-markdown-nvim' })
		end
	end
end

return spec
