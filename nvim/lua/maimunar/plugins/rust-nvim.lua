vim.g.rustaceanvim = {
  server = {
    on_attach = function(client, bufnr)
      vim.keymap.set("n", "<leader>ca", function()
        vim.cmd.RustLsp("codeAction") -- supports rust-analyzer's grouping
        -- or vim.lsp.buf.codeAction() if you don't want grouping.
      end, { silent = true, buffer = bufnr })

      vim.keymap.set("n", "<leader>h", function()
        vim.cmd.RustLsp({ "hover", "actions" })
      end, { buffer = bufnr })
    end,
  },
  -- tools = {
  --   hover_actions = {
  --     auto_focus = true,
  --   },
  -- },
}
return {
  "mrcjkb/rustaceanvim",
  version = "^4", -- Recommended
  lazy = false, -- This plugin is already lazy
}
