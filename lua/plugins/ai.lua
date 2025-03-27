local copilot = require('setup').options.copilot

---@type LazySpec
local spec = {}

if copilot then
	local copilot_spec = require('plugins.ai.copilots.' .. copilot)

	if copilot_spec and type(spec) ~= 'string' then
		table.insert(spec, copilot_spec)
	end
end

return spec
