require "nvchad.options"

vim.opt.colorcolumn = "100"
vim.cmd "set expandtab"
vim.cmd "set tabstop=2"
vim.cmd "set softtabstop=2"
vim.cmd "set shiftwidth=2"
vim.cmd "set rnu"

vim.filetype.add {
  pattern = {
    [".+ansible/.*.yml"] = "yaml.ansible",
  },
}

-- local o = vim.o
-- o.cursorlineopt ='both' -- to enable cursorline!
