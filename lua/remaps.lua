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
vim.api.nvim_set_keymap('n', '<leader>gr', ':GoRun<Enter>', { noremap = true })

-- Legg til caps i stedet for esc for å gå ut av insert eller visual mode
-- function Remap_caps_lock()
  -- local keycode = 20
  -- local active = vim.fn.getchar(keycode) == 1
  -- if active then
    -- vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes('<Esc>', true, false, true), 'n', true)
  -- end
-- end

-- vim.api.nvim_set_keymap('i', '<CapsLock>', [[<Cmd>lua Remap_caps_lock()<CR>]], { noremap = true, silent = true })


-- vim.api.nvim_set_keymap('x', '<CapsLock>', [[<Cmd>lua Remap_caps_lock()<CR>]], { noremap = true, silent = true })


