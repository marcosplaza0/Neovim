return {
    "catppuccin/nvim", 

    lazy = false,
    name = "catppuccin",
    priority = 1000, 


    config = function()
        require("catppuccin").setup({
            flavour = "frappe", -- latte, frappe, macchiato, mocha
            background = { -- :h background
                light = "latte",
                dark = "mocha",
            },
            transparent_background = true, -- disables setting the background color.
            show_end_of_buffer = false, -- shows the '~' characters after the end of buffers
            term_colors = false, -- sets terminal colors (e.g. `g:terminal_color_0`)
            dim_inactive = {
                enabled = false, -- dims the background color of inactive window
                shade = "dark",
                percentage = 0.15, -- percentage of the shade to apply to the inactive window
            },
            no_italic = false, -- Force no italic
            no_bold = false, -- Force no bold
            no_underline = false, -- Force no underline
            styles = { -- Handles the styles of general hi groups (see `:h highlight-args`):
                comments = { "italic" }, -- Change the style of comments
                conditionals = { "italic" },
            },
            integrations = {
                harpoon = true,
                mason = true,
            },
        })
        vim.cmd.colorscheme "catppuccin"
        vim.api.nvim_set_hl(0, "LineNr", { fg = "#FF0000"})
    end,
}
