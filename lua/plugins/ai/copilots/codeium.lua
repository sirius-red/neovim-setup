---@type LazySpec
return {
	'Exafunction/codeium.vim',
	lazy = false,
	cmd = 'Codeium',
	event = 'BufEnter',
	build = ':Codeium Auth',
}
