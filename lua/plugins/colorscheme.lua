return {
    -- Shortened Github Url
    "rebelot/kanagawa.nvim",
    lazy = false,
    priority = 1000,
    config = function()
        vim.cmd.colorscheme "kanagawa"
    end
}

-- return {
--     -- Shortened Github Url
--     "Mofiqul/dracula.nvim",
--     lazy = false,
--     priority = 1000,
--     config = function()
--         -- Make sure to set the color scheme when neovim loads and configures the dracula plugin
--         vim.cmd.colorscheme "dracula"
--     end
-- }

-- return {
--     {
--         'folke/tokyonight.nvim',
--         lazy = false,
--         priority = 1000,
--         config = function()
--             -- Make sure to set the color scheme when neovim loads and configures the dracula plugin
--             vim.cmd.colorscheme 'tokyonight'
--         end
--     }
-- }
