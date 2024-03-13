return {
 "akinsho/horizon.nvim", 
   version = "*",
   priority = 1000,
   config = function()
    vim.cmd.colorscheme('horizon')
    vim.o.background = "dark" 
   end
}
