local M = {}

-- Example customization
M.ui = {
  theme = "gruvchad",
}

-- Load additional configurations
require("custom.configs.lsp") -- Ensure this file exists and has no errors

return M -- Make sure this return is present
