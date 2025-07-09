return {
  -- Top Pickers & Explorer
  {
    "<leader>:",
    function()
      Snacks.picker.command_history()
    end,
    desc = "Command History",
  },
  {
    "<leader>nh",
    function()
      Snacks.picker.notifications()
    end,
    desc = "Notification History",
  },
  {
    "<leader>ee",
    function()
      Snacks.explorer()
    end,
    desc = "File Explorer",
  },
  -- find
  {
    "<leader>ff",
    function()
      Snacks.picker.files()
    end,
    desc = "Find Files",
  },
  {
    "<leader>fr",
    function()
      Snacks.picker.resume()
    end,
    desc = "Resume",
  },
  {
    "<leader>fR",
    function()
      Snacks.picker.recent()
    end,
    desc = "Recent",
  },
  -- Grep
  {
    "<leader>fs",
    function()
      Snacks.picker.grep()
    end,
    desc = "Grep",
  },
  {
    "<leader>fc",
    function()
      Snacks.picker.grep_word()
    end,
    desc = "Visual selection or word",
    mode = { "n", "x" },
  },
  -- search
  {
    "<leader>fm",
    function()
      Snacks.picker.marks()
    end,
    desc = "Marks",
  },
  {
    "<leader>fq",
    function()
      Snacks.picker.qflist()
    end,
    desc = "Quickfix List",
  },
  -- LSP
  {
    "gd",
    function()
      Snacks.picker.lsp_definitions()
    end,
    desc = "Goto Definition",
  },
  {
    "gD",
    function()
      Snacks.picker.lsp_declarations()
    end,
    desc = "Goto Declaration",
  },
  {
    "gR",
    function()
      Snacks.picker.lsp_references()
    end,
    nowait = true,
    desc = "References",
  },
  {
    "gI",
    function()
      Snacks.picker.lsp_implementations()
    end,
    desc = "Goto Implementation",
  },
  -- Git
  {
    "<leader><leader>gb",
    function()
      Snacks.git.blame_line()
    end,
    desc = "Git Blame",
  },
  {
    "<leader>gu",
    function()
      Snacks.lazygit()
    end,
    desc = "Lazygit",
  },
  -- Extra
  {
    "<leader>nd",
    function()
      Snacks.notifier.hide()
    end,
    desc = "Dismiss All Notifications",
  },
  {
    "<leader>z",
    function()
      Snacks.zen()
    end,
    desc = "Toggle Zen Mode",
  },
  {
    "]]",
    function()
      Snacks.words.jump(vim.v.count1)
    end,
    desc = "Next Reference",
    mode = { "n", "t" },
  },
  {
    "[[",
    function()
      Snacks.words.jump(-vim.v.count1)
    end,
    desc = "Prev Reference",
    mode = { "n", "t" },
  },
}
