-- if true then return {} end -- WARN: COMMENT THIS LINE TO ACTIVATE THIS FILE

---@type LazySpec
return {
	{ 'AstroNvim/astrocommunity',                      priority = 10000 },
	{ import = 'astrocommunity.pack.lua' },
	{ import = 'astrocommunity.colorscheme.catppuccin' },
}
