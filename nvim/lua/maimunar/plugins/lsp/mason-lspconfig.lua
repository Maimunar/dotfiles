return {
	"mason-org/mason-lspconfig.nvim",
	dependencies = {
		{ "mason-org/mason.nvim", opts = {} },
		"neovim/nvim-lspconfig",
	},
	opts = {
		ensure_installed = {
			"astro",
			"bashls",
			"ts_ls",
			"html",
			"cssls",
			"tailwindcss",
			"svelte",
			"lua_ls",
			"emmet_ls",
			"prismals",
			"pyright",
			"sqlls",
			"rust_analyzer",
			"clangd",
			"zk",
		},
	},
}
