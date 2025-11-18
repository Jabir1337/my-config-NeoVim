require "nvchad.options"

-- add yours here!

-- local o = vim.o
-- o.cursorlineopt ='both' -- to enable cursorline!
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.softtabstop = 4

-- Enable real-time diagnostics (update on text change)
vim.diagnostic.config({
  update_in_insert = true,
  severity_sort = true,
})
