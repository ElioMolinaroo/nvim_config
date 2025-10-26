return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		opts = {
			auto_install = true,
		},
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local capabilities = require("blink.cmp").get_lsp_capabilities()
			-- Configure LSPs
			vim.lsp.config("lua_ls", { capabilities = capabilities })
			vim.lsp.config("gopls", { capabilities = capabilities })
			vim.lsp.config("ruff", { capabilities = capabilities })
			vim.lsp.config("basedpyright", {
				capabilities = capabilities,
				settings = {
					basedpyright = {
						typeCheckingMode = "off",
					},
				},
			})
			-- Enable LSPs
			vim.lsp.enable("lua_ls")
			vim.lsp.enable("gopls")
			vim.lsp.enable("ruff")
			vim.lsp.enable("basedpyright")

      vim.diagnostic.config({ virtual_text = true })

			-- Set keybindings
			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
			vim.keymap.set("n", "gd", vim.lsp.buf.references, {})
			vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
			vim.keymap.set("n", "<leader>r", vim.lsp.buf.rename)
		end,
	},
}
