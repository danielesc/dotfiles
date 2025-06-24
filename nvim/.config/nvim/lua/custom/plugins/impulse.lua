return {
  'chrsm/impulse.nvim',
  config = function()
    require('impulse').setup {}
  end,
  requires = { 'nvim-lua/plenary.nvim', 'nvim-telescope/telescope.nvim' },
}
