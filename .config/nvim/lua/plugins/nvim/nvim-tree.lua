return {
  'nvim-tree/nvim-tree.lua',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function ()
    require('nvim-tree').setup {}
    
    vim.api.nvim_create_autocmd({ 'VimEnter' }, {
      callback = function()
        require('nvim-tree.api').tree.open()
      end
    })
  end,
  lazy = false,
  keys = {
    { mode = 'n', '<Leader>e', ':NvimTreeToggle<CR>', desc = 'toggle tree' },
    { mode = 'n', '<Leader>;', ':NvimTreeFindFile<CR>', desc = 'find file in tree' }
  }
}
