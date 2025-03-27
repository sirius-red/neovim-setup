---@meta

---@class LazyNvim
---@field path string
---@field repo string
---@field spec LazySpec
---@field config LazyConfig
---@field bootstrap fun(): nil
---@field setup fun(): nil

---@alias CopilotName 'codeium'|nil

---@class NeovimSetupOptions
---@field copilot CopilotName

---@class NeovimSetup
---@field options NeovimSetupOptions
---@field vim_options fun(): nil
---@field lazy_nvim fun(): nil
---@field keymaps fun(): nil
---@field init fun(options?: NeovimSetupOptions): nil
