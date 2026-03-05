vim.o.number = true
vim.o.relativenumber = true
vim.o.tabstop = 2
vim.o.shiftwidth = 2
vim.o.expandtab = true
vim.o.wrap = false
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.list = true
vim.o.listchars = 'tab:»-,space:･,trail:-,eol:↲'
vim.o.cursorline = true
vim.o.termguicolors = true
vim.o.clipboard = 'unnamedplus'
vim.wo.signcolumn = 'yes'

-- for Neovim Ui Modifier
if vim.g.vscode then
  vim.api.nvim_exec([[
    " THEME CHANGER
    function! SetCursorLineNrColorInsert(mode)
      " Insert mode: blue
      if a:mode == 'i'
        call VSCodeNotify('nvim-theme.insert')

      " Replace mode: red
      elseif a:mode == 'r'
        call VSCodeNotify('nvim-theme.replace')
      endif
    endfunction

    augroup CursorLineNrColorSwap
      autocmd!
      autocmd ModeChanged *:[vV\x16]* call VSCodeNotify('nvim-theme.visual')
      autocmd ModeChanged *:[R]* call VSCodeNotify('nvim-theme.replace')
      autocmd InsertEnter * call SetCursorLineNrColorInsert(v:insertmode)
      autocmd InsertLeave * call VSCodeNotify('nvim-theme.normal')
      autocmd CursorHold * call VSCodeNotify('nvim-theme.normal')
      autocmd ModeChanged [vV\x16]*:* call VSCodeNotify('nvim-theme.normal')
    augroup END
  ]], false)
end