return {
    "nvim-tree/nvim-tree.lua",
    config = function()
        vim.keymap.set('n', '<leader>ee', "<cmd>NvimTreeFocus<CR>", {desc = "Focus [E]xplorer"})
        vim.keymap.set('n', '<leader>ex', "<cmd>NvimTreeClose<CR>", {desc = "Close [E]xplorer"})
        require("nvim-tree").setup({
            hijack_netrw = true,
            auto_reload_on_write = true,
            update_focused_file = { enable = true }
        })
    end
}
