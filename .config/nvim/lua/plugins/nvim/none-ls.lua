return {
  'nvimtools/none-ls.nvim',
  config = function()
    local null_ls = require('null-ls')

    null_ls.setup({
      sources = ({
        -- js
        null_ls.builtins.formatting.prettier,
        -- null_ls.builtins.diagnostics.eslint,
        -- ruby
        null_ls.builtins.formatting.rubocop,
        null_ls.builtins.diagnostics.rubocop,
      })
    })
  end
}
