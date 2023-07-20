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

-- highlight the text being yanked
vim.api.nvim_create_autocmd({ "TextYankPost" }, {
  callback = function()
    vim.highlight.on_yank { timeout = 500 }
  end,
})


-- Auto toggle between relative and absolute line numbering.
vim.api.nvim_create_autocmd(
  { "BufEnter", "FocusGained", "InsertLeave",
    "TermLeave", "WinEnter", "CmdlineLeave" }, {
  callback = function()
    if vim.opt_local.number:get() then
      vim.opt_local.relativenumber = true
    end
  end,
})

vim.api.nvim_create_autocmd(
  { "BufLeave", "FocusLost", "InsertEnter",
    "TermEnter", "WinLeave", "CmdlineEnter" }, {
  callback = function()
    if vim.opt_local.number:get() then
      vim.opt_local.relativenumber = false
    end
  end,
})

