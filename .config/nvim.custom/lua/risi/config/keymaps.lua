local map = vim.keymap.set

map('n', '<Esc>', '<cmd>nohlsearch<CR>')
map('i', 'jk', '<ESC>')

map('n', '<leader>cr', function()
  vim.cmd 'source $MYVIMRC'

  print 'config reloaded'
end, { desc = 'Reload Neovim Config' })

-- Diagnostic keymaps
map('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

map('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
map('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
map('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
map('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

map('n', '<leader>to', '<cmd>tabnew<CR>', { desc = 'Open new tab' }) -- open new tab
map('n', '<leader>tx', '<cmd>tabclose<CR>', { desc = 'Close current tab' }) -- close current tab

map('n', '<leader>tX', function()
  local current = vim.fn.bufnr '%'
  for _, bufnr in ipairs(vim.api.nvim_list_bufs()) do
    if vim.api.nvim_buf_is_loaded(bufnr) and bufnr ~= current then
      vim.cmd('tX ' .. bufnr)
    end
  end
end, { desc = 'Close all buffers except current' })

map('n', '<leader>tn', '<cmd>tabn<CR>', { desc = 'Go to next tab' }) --  go to next tab
map('n', '<leader>tp', '<cmd>tabp<CR>', { desc = 'Go to previous tab' }) --  go to previous tab
map('n', '<leader>tf', '<cmd>tabnew %<CR>', { desc = 'Open current buffer in new tab' }) --  move current buffer to new tab
map('n', '<leader>tw', function()
  vim.wo.wrap = not vim.wo.wrap
end, { desc = 'Open current buffer in new tab' }) --  move current buffer to new tab

map('n', '<leader>tl', function()
  vim.wo.number = not vim.wo.number
  vim.wo.relativenumber = not vim.wo.relativenumber
end, { desc = 'Toggle line numbers' })
