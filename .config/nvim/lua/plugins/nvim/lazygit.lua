return {
  'kdheepak/lazygit.nvim',
  cmd = 'LazyGit',
  dependencies = { 'nvim-lua/plenary.nvim' },
  keys = {
    { mode = 'n', '<Leader>G', ':LazyGit<CR>', desc = 'lazygit' }
  }
}
