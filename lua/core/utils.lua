local M = {}

local vim_set_keymap = vim.api.nvim_set_keymap

local function load_keymaps(keymap_data)
  for _, mode_mappings in pairs(keymap_data) do
    for mode, keybindings in pairs(mode_mappings) do
      for keybinding, mapping_info in pairs(keybindings) do
        vim_set_keymap(mode, keybinding, mapping_info[1], { desc = mapping_info[2] })
      end
    end
  end
end

M.load_config = function()
  load_keymaps(require("core.keymaps"))
end

return M
