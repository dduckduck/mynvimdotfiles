return {
    -- Mason
    {
        "williamboman/mason.nvim",
        lazy = false,
        config = function() require("mason").setup() end
    }, -- Mason LSP
    {
        "williamboman/mason-lspconfig.nvim",
        lazy = false,
        opts = {auto_install = true},
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = {"clangd", "pyright" ,"lua_ls"},
                automatic_instalation = true
            })
        end
    }, -- LSP Config
    {
        "neovim/nvim-lspconfig",
        dependencies = {"hrsh7th/cmp-nvim-lsp"},
        lazy = false,
        config = function()
            local capabilities = require('cmp_nvim_lsp').default_capabilities()
            local lspconfig = require("lspconfig")
            lspconfig.clangd.setup({capabilities = capabilities})
            lspconfig.lua_ls.setup({capabilities = capabilities})
            lspconfig.pyright.setup({capabilities = capabilities})

            -- vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
            -- vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
            -- vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
            -- vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
        end
    }
}

