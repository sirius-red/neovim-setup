local options = require('setup').options

---@type LazySpec
local spec = {}

if options.copilot then
	local copilot_spec = require('plugins.ai.copilots.' .. options.copilot)

	if copilot_spec then
		table.insert(spec, copilot_spec)
	end
end

return spec
