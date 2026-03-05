local map = vim.api.nvim_set_keymap

-- neovim and vscode keymap function
local function keymap(mode, lhs, rhs_nvim, rhs_vscode, opts)
  local rhs = vim.g.vscode and rhs_vscode or rhs_nvim

  if rhs ~= nil then
    map(mode, lhs, rhs, opts)
  end
end

-- space leader
vim.g.mapleader = ' '

-- to normal mode
keymap('i', 'jj', '<Esc>', nil, { noremap = true, silent = false })

-- cursor
keymap('n', 'J', '10j', '10j', { noremap = true, silent = true })
keymap('n', 'K', '10k', '10k', { noremap = true, silent = true })
keymap('n', 'H', '^', '^', { noremap = true, silent = true })
keymap('n', 'L', '$', '$', { noremap = true, silent = true })
keymap('v', 'J', '10j', '10j', { noremap = true, silent = true })
keymap('v', 'K', '10k', '10k', { noremap = true, silent = true })
keymap('v', 'H', '^', '^', { noremap = true, silent = true })
keymap('v', 'L', '$', '$', { noremap = true, silent = true })

-- toggle highlight
keymap('n', '<Esc><Esc>', '<Cmd>set nohlsearch!<CR>', '<Cmd>set nohlsearch!<CR>', { noremap = false, silent = true })

-- indent
keymap('v', '<', '<gv', '<gv', { noremap = false, silent = true })
keymap('v', '>', '>gv', '>gv', { noremap = false, silent = true })

-- file
keymap('n', '<Leader>w', '<Cmd>w<CR>', '<Cmd>call VSCodeNotify("workbench.action.files.save")<CR>', { noremap = true, silent = false })
keymap('n', '<Leader>q', '<Cmd>q<CR>', '<Cmd>call VSCodeNotify("workbench.action.closeActiveEditor")<CR>', { noremap = true, silent = false })

-- search
keymap('n', 'n', 'nzz', 'nzz', { noremap = true, silent = false })
keymap('n', 'N', 'Nzz', 'Nzz', { noremap = true, silent = false })

-- window
keymap('n', '<Leader>j', '<C-w>j', '<Cmd>call VSCodeNotify("workbench.action.focusBelowGroup")<CR>', { noremap = true, silent = false })
keymap('n', '<Leader>k', '<C-w>k', '<Cmd>call VSCodeNotify("workbench.action.focusAboveGroup")<CR>', { noremap = true, silent = false })
keymap('n', '<Leader>h', '<C-w>h', '<Cmd>call VSCodeNotify("workbench.action.focusLeftGroup")<CR>', { noremap = true, silent = false })
keymap('n', '<Leader>l', '<C-w>l', '<Cmd>call VSCodeNotify("workbench.action.focusRightGroup")<CR>', { noremap = true, silent = false })

-- tab
keymap('n', '<Leader><Tab>', nil, 'gt', { noremap = false, silent = false })
keymap('n', '<Leader><S-Tab>', nil, 'gT', { noremap = false, silent = false })

-- split
keymap('n', '<Leader>v', '<Cmd>vs<CR>', '<Cmd>call VSCodeNotify("workbench.action.splitEditor")<CR>', { noremap = true, silent = false })
keymap('n', '<Leader>s', '<Cmd>sp<CR>', '<Cmd>call VSCodeNotify("workbench.action.splitEditorOrthogonal")<CR>', { noremap = true, silent = false })

-- definition
keymap('n', '<Leader>[', nil, '<Cmd>call VSCodeNotify("editor.action.peekDefinition")<CR>', { noremap = true, silent = false })
keymap('n', '<Leader>]', nil, '<Cmd>call VSCodeNotify("editor.action.goToReferences")<CR>', { noremap = true, silent = false })

-- delete
keymap('n', 'x', '"_x', '"_x', { noremap = true, silent = false })
keymap('n', 's', '"_s', '"_s', { noremap = true, silent = false })

-- grep
keymap('n', '<Leader>g', nil, 'viw<Cmd>call VSCodeNotify("workbench.action.findInFiles")<CR>', { noremap = true, silent = false })
keymap('v', '<Leader>g', nil, '<Cmd>call VSCodeNotify("workbench.action.findInFiles")<CR>', { noremap = true, silent = false })
