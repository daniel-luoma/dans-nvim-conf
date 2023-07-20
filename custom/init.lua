-- Configs by Daniel


-- smart search
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- tabs are two spaces
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

-- line break configuration
vim.opt.textwidth = 79
vim.opt.colorcolumn = {80, 120}
vim.opt.breakindent = true
vim.opt.linebreak = true

-- Built-in completion & tag search
vim.opt.completeopt:append{"menuone", "noinsert"}

-- spell check
vim.opt.spell = true
vim.opt.spelllang = {"en_us"}
