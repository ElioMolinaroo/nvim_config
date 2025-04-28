return {
    "nvimtools/none-ls.nvim",
    config = function()
        local null_ls = require("null-ls")
        null_ls.setup({
            sources = {
                null_ls.builtins.formatting.stylua,
                null_ls.builtins.formatting.black.with({extra_args={"--line-length=250"}}),
                null_ls.builtins.formatting.isort,
            },
        })

        vim.keymap.set("n", "<leader>f", function() vim.lsp.buf.format({timeout_ms = 8000}) end)
    end,
}
