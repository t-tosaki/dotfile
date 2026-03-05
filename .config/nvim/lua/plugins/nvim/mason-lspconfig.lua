return {
  'mason-org/mason-lspconfig.nvim',
  version = '^1.0.0',
  dependencies = {
    { 'mason-org/mason.nvim', version = '^1.0.0' },
    'neovim/nvim-lspconfig'
  },
  config = function()
    require('mason').setup()

    require('mason-lspconfig').setup({
      ensure_installed = {
        'solargraph'
      }
    })

    require('mason-lspconfig').setup_handlers({
      function(server_name)
        require('lspconfig')[server_name].setup({})
      end,
    })
  end
}
