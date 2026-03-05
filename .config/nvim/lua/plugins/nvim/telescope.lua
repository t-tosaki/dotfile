return {
  'nvim-telescope/telescope.nvim',
  tag = '0.1.8',
  dependencies = { 'nvim-lua/plenary.nvim' },
  keys = {
    { mode = 'n', '<Leader>f', ':Telescope find_files<CR>', desc = 'find files' },
    { mode = 'n', '<Leader>g', ':Telescope live_grep<CR>', desc = 'live grep' },
    { mode = 'n', '<Leader>b', ':Telescope buffers<CR>', desc = 'buffers' },
    { mode = 'n', '<Leader>[', ':Telescope lsp_definitions<CR>', desc = 'lsp definitions' },
    { mode = 'n', '<Leader>]', ':Telescope lsp_references<CR>', desc = 'lsp references' },
  }
}
