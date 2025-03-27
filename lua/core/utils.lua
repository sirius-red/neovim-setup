---@class Utils
local M = {}

--- Deduplicate a list
---@param list table The list to deduplicate
---@return table The deduplicated list
function M.dedup_list(list)
	local seen = {}
	local current_list = list
	list = {}

	for _, v in ipairs(current_list) do
		if not seen[v] then
			table.insert(list, v)
			seen[v] = true
		end
	end

	return list
end

return M
