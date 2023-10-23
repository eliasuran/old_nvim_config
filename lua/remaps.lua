-- [[ mpu69 keymap options ]]

vim.g.mapleader = ' '

-- Create inoremap for curly braces {}
vim.api.nvim_set_keymap('i', '{', '{}<Esc>ha', { noremap = true })

-- Create inoremap for parentheses ()
vim.api.nvim_set_keymap('i', '(', '()<Esc>ha', { noremap = true })

-- Create inoremap for square brackets []
vim.api.nvim_set_keymap('i', '[', '[]<Esc>ha', { noremap = true })

-- Create inoremap for double quotes ""
vim.api.nvim_set_keymap('i', '"', '""<Esc>ha', { noremap = true })

-- Create inoremap for single quotes ''
vim.api.nvim_set_keymap('i', "'", "''<Esc>ha", { noremap = true })

-- Create inoremap for backticks ``
vim.api.nvim_set_keymap('i', '`', '``<Esc>ha', { noremap = true })

-- :Ex command + enter binda til <leader>ft (file tree)
vim.keymap.set("n", "<leader>ft", vim.cmd.Ex)

-- Shortcuts for go
vim.api.nvim_set_keymap('n', '<leader>gr', ':GoRun<Enter>', { noremap = true, silent = true, desc = 'gorun current file' })
vim.api.nvim_set_keymap('n', '<leader>gm', ':GoFmt<Enter>', { noremap = true, silent = true, desc = 'gofmt current file' })

-- Vertical navigation
vim.keymap.set("n", "<C-d>", "<C-d>zz")

vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Formatting (prettier)
vim.api.nvim_set_keymap('n', '<leader>fs', ':Neoformat prettier<Enter>', { noremap = true, silent = true, desc = '[F]ormat [S]ode' })

vim.cmd('autocmd BufWritePre *.js,*.jsx,*.ts,*.tsx :Neoformat prettier')

-- Yank all
vim.api.nvim_set_keymap("n", "<leader>fe", "ggyG", { noremap = true, silent = true, desc = "Yank everything" })
