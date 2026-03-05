return {
  'phaazon/hop.nvim',
  branch = 'v2',
  config = function()
    require('hop').setup {
      multi_windows = true,
    }
  end,
  keys = {
    { mode = '', 'f', '<Cmd>HopChar2<CR>', desc = 'Hop 2 char' },
    { mode = '', 'F', '<Cmd>HopWord<CR>', desc = 'Hop word' },
    { mode = '', 's', '<Cmd>HopChar1CurrentLineAC<CR>', desc = 'Hop 1 char in current line' },
    { mode = '', 'S', '<Cmd>HopChar1CurrentLineBC<CR>', desc = 'Hop 1 char in current line' },
  }
}