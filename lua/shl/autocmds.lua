-- [[ Basic Autocommands ]]
--  See `:help lua-guide-autocommands`

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

vim.api.nvim_create_autocmd({ 'TermOpen', 'TermClose' }, {
  desc = 'Remove line numbers when opening terminal',
  group = vim.api.nvim_create_augroup('shl-terminal-open', { clear = true }),
  callback = function()
    if vim.opt.number then
      vim.opt.number = false
      vim.opt.relativenumber = false
    else
      vim.opt.number = true
      vim.opt.relativenumber = true
    end
  end,
})
