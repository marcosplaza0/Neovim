return {
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end
    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = { "lua_ls", "pyright", "jdtls", "clangd"}
            })
        end
    },
    {
        "WhoIsSethDaniel/mason-tool-installer.nvim",
        config = function()
            require('mason-tool-installer').setup({
                ensure_installed = {
                    'black',
                    'debugpy',
                    'flake8',
                    'cpplint',
                    'clang-format',
                },
            })
        end
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            local lspconfig = require("lspconfig")
            lspconfig.lua_ls.setup{}
            lspconfig.pyright.setup{}
            lspconfig.jdtls.setup{}
            lspconfig.clangd.setup{}

            vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
            vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
            vim.keymap.set({ 'n', 'v' }, '<space>ca', vim.lsp.buf.code_action, {})
        end
    }
}
