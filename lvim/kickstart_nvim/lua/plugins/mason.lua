return {
	"williamboman/mason-lspconfig.nvim",
	cmd = { "LspInstall", "LspUninstall" },
	config = function()
		-- Ensure that `mason-lspconfig` is set up with valid configuration
		require("mason-lspconfig").setup({
			automatic_installation = false, -- Disable automatic LSP installation by Mason
		})
	end,
	lazy = true,
	event = "User FileOpened",
	dependencies = { "williamboman/mason.nvim" }, -- Ensure dependency name matches
}
