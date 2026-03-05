return {
  'romgrk/barbar.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function ()
    require('barbar').setup({})
  end,
  lazy = false,
  keys = {
    { mode = 'n', '<Leader><Tab>', ':BufferNext<CR>', desc = 'next tab' },
    { mode = 'n', '<Leader><S-Tab>', ':BufferPrev<CR>', desc = 'prev tab' },
    { mode = 'n', '<Leader>x', ':BufferClose<CR>', desc = 'close tab' },
  }
}
