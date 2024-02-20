return {
    -- You can also add new plugins here as well:
    -- Add plugins, the lazy syntax
    -- "andweeb/presence.nvim",
    -- {
    --   "ray-x/lsp_signature.nvim",
    --   event = "BufRead",
    --   config = function()
    --     require("lsp_signature").setup()
    --   end,
    -- },
    {
        "folke/todo-comments.nvim",
        dependencies = { "nvim-lua/plenary.nvim" },
        -- config = function ()
        --   require("todo-comments").setup {}
        -- end,
        opts = {},
        event = "User AstroFile",
        cmd = { "TodoQuickFix" },
        keys = {
            { "<leader>T", "<cmd>TodoTelescope<cr>", desc = "Open TODOs in Telescope" }
        }
    },
    {
        'wakatime/vim-wakatime',
        lazy = false
    },
    {
        "rust-lang/rust.vim",
        ft = "rust",
        init = function ()
            vim.g.rustfmt_autosave = 1
        end
    },
    {
        "theHamsta/nvim-dap-virtual-text",
        lazy = false,
        config = function(_, opts)
            require("nvim-dap-virtual-text").setup()
        end
    },
}
