return {
  "WhoIsSethDaniel/mason-tool-installer.nvim",
  opts = {

    ensure_installed = {
      "prettier", -- prettier formatter
      "stylua", -- lua formatter
      "isort", -- python formatter
      "gopls", -- go formatter
      "black", -- python formatter
      "pylint", -- python linter
      "eslint_d", -- js linter
      "eslint", -- js linter
    },
  },
}
