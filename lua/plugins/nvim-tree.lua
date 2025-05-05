local function my_on_attach(bufnr)
  local api = require "nvim-tree.api"

  -- default mappings
  api.config.mappings.default_on_attach(bufnr)

  vim.keymap.del('n', '<C-t>', { buffer = bufnr })
end

return {
    "nvim-tree/nvim-tree.lua",
    config = function()
        vim.keymap.set('n', '<leader>ee', "<cmd>NvimTreeFocus<CR>", {desc = "Focus [E]xplorer"})
        vim.keymap.set('n', '<leader>ex', "<cmd>NvimTreeClose<CR>", {desc = "Close [E]xplorer"})
        require("nvim-tree").setup({
          diagnostics = {
            enable = true,
            show_on_dirs = false,
            show_on_open_dirs = true,
            -- debounce_delay = 50,
            severity = {
              min = vim.diagnostic.severity.ERROR,
              max = vim.diagnostic.severity.ERROR,
            },
          },
          on_attach = my_on_attach,
          hijack_cursor = true,
          sort_by = "case_sensitive",
          view = {
            width = 40,
          },
          renderer = {
            group_empty = true,
          },
          filters = {
            dotfiles = false,
            custom = {
              '.git',
              '.vite',
              '.github',
              '.yarn',
              '.mvn'
            }
          },
          update_focused_file = { enable = true },
          hijack_netrw = true,
          auto_reload_on_write = true,
        })
    end
}
