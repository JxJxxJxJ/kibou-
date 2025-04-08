-- [[ Basic Keymaps ]]
--  See `:help vim.keymap.set()`

-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- TIP: Disable arrow keys in normal mode
-- vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
-- vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
-- vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
-- vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- NOTE: Some terminals have coliding keymaps or are not able to send distinct keycodes
-- vim.keymap.set("n", "<C-S-h>", "<C-w>H", { desc = "Move window to the left" })
-- vim.keymap.set("n", "<C-S-l>", "<C-w>L", { desc = "Move window to the right" })
-- vim.keymap.set("n", "<C-S-j>", "<C-w>J", { desc = "Move window to the lower" })
-- vim.keymap.set("n", "<C-S-k>", "<C-w>K", { desc = "Move window to the upper" })

-- [[ Basic Autocommands ]]
--  See `:help lua-guide-autocommands`

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- Para comentar usando la API de nvim
vim.keymap.set('v', '<leader>/', function()
  local count = vim.v.count
  vim.cmd.norm((count > 0 and count or '') .. 'gcc')
end)

vim.keymap.set('n', '<leader>/', function()
  local count = vim.v.count
  vim.cmd.norm((count > 0 and count or '') .. 'gcc')
end)

vim.keymap.set('o', '<leader>/', function()
  local count = vim.v.count
  vim.cmd.norm((count > 0 and count or '') .. 'gcc')
end)

vim.keymap.set('x', '<leader>/', function()
  local count = vim.v.count
  vim.cmd.norm((count > 0 and count or '') .. 'gcc')
end)

-- Para irme al dashboard y poder volver al archivo anterior
--
local original_file = ''

-- Mapeo de líder ; para alternar entre dashboard y archivo original
vim.api.nvim_set_keymap('n', '<Leader>;', ':lua ToggleDashboard()<CR>', { noremap = true, silent = true })

function ToggleDashboard()
  -- Si aun nunca fui a un dashboard
  if original_file == '' then
    -- Guarda el archivo actual y abre el dashboard
    original_file = vim.fn.expand '%:p'
    vim.cmd 'Dashboard'
  else -- Hay algo en original file, es decir estoy en un dashboard
    -- Vuelve al archivo original
    vim.cmd('edit ' .. original_file)
    original_file = '' -- Y borro para poder usarla de nuevo
  end
end

-- vim: ts=2 sts=2 sw=2 et
