-- Open compiler
vim.api.nvim_set_keymap('n', '<leader>co', '<cmd>CompilerOpen<cr>', { noremap = true, silent = true, desc = '[C]ompiler [O]pen' })

-- Redo last selected option
vim.api.nvim_set_keymap('n', '<leader>cr', '<cmd>CompilerStop<cr>' .. '<cmd>CompilerRedo<cr>', { noremap = true, silent = true, desc = '[C]ompiler [R]edo' })

-- Toggle compiler results
vim.api.nvim_set_keymap('n', '<leader>ct', '<cmd>CompilerToggleResults<cr>', { noremap = true, silent = true, desc = '[C]ompiler [T]oggle results' })

return { -- This plugin
  'Zeioth/compiler.nvim',
  cmd = { 'CompilerOpen', 'CompilerToggleResults', 'CompilerRedo' },
  dependencies = { 'stevearc/overseer.nvim', 'nvim-telescope/telescope.nvim' },
  opts = {},
}
