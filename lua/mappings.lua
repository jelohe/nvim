-- Leader key
vim.g.mapleader = " "

-- File navigation
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<C-p>', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>f', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>r', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>b', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader> ', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>t', builtin.help_tags, { desc = 'Telescope help tags' })
vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Oil file viewer" })
vim.keymap.set("n", "<leader>o", "<CMD>Oil<CR>", { desc = "Oil file viewer" })
vim.keymap.set("n", "<tab>", "<C-^>", { desc = "Toggle previous buffer" })

-- Autocomplete: Tab o C-n
function _G.TabOrComplete()
  if vim.fn.col('.') > 1 and string.match(vim.fn.getline('.'), vim.fn.col('.') - 2, 3) then
    return vim.api.nvim_replace_termcodes('<C-N>', true, true, true)
  else
    return vim.api.nvim_replace_termcodes('<Tab>', true, true, true)
  end
end
vim.keymap.set('i', '<Tab>', 'v:lua.TabOrComplete()', { expr = true, noremap = true })

-- Buffer deletion
vim.keymap.set('n', '<Leader>q', ':bdelete<CR>', { noremap = true, desc = "Delete buffer" })
vim.keymap.set('n', '<Leader>x', ':bdelete<CR>', { noremap = true, desc = "Delete buffer" })
vim.keymap.set('n', '<Leader>Q', ':bufdo bd<CR>', { noremap = true })

-- Easily moving lines
vim.keymap.set('v', 'J', ':m \'>+1<CR>gv', { noremap = true })
vim.keymap.set('v', 'K', ':m \'<-2<CR>gv', { noremap = true })

-- Window navigation
vim.keymap.set('n', '<C-h>', '<C-w>h', { noremap = true })
vim.keymap.set('n', '<C-j>', '<C-w>j', { noremap = true })
vim.keymap.set('n', '<C-k>', '<C-w>k', { noremap = true })
vim.keymap.set('n', '<C-l>', '<C-w>l', { noremap = true })

-- C-s to save (old habits)
vim.keymap.set('n', '<C-s>', ':w<CR>', { noremap = true })
vim.keymap.set('i', '<C-s>', '<Esc>:w<CR>', { noremap = true })

-- Enter to : (cmd mode)
vim.keymap.set({'n', 'v'}, '<CR>', ':', { noremap = true })

-- Configuración del signo de columna
vim.wo.signcolumn = "yes"  -- Siempre mostrar la columna de signos
