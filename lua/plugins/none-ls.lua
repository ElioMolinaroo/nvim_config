return {
	"nvimtools/none-ls.nvim",
	config = function()
		local null_ls = require("null-ls")
		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.stylua,
			},
		})

		vim.keymap.set("n", "<leader>f", function()
			vim.lsp.buf.code_action({ context = { only = { "source.organizeImports" } }, apply = true })
			vim.lsp.buf.format()
		end)
	end,
}
