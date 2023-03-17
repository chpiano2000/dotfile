vim.g.mapleader = " "
local keymap = vim.keymap

-- General
keymap.set("i", "kj", "<ESC>")
keymap.set("n", "<leader>nh", ":nohl<CR>")


-- Select all
keymap.set('n', '<C-a>', "gg<S-v>G")

-- New Tab
keymap.set('n', 'te', ":tabedit<Return>", { silent = true })

-- Split window
keymap.set('n', 'ss', ":split<Return><C-w>w", { silent = true })
keymap.set('n', 'sv', ":vsplit<Return><C-w>w", { silent = true })

-- Move window
keymap.set('', 'sh', '<C-w>h')
keymap.set('', 'sj', '<C-w>j')
keymap.set('', 'sk', '<C-w>k')
keymap.set('', 'sl', '<C-w>l')

-- Resize window
keymap.set('n', '<C-w><left>', '<C-w><')
keymap.set('n', '<C-w><right>', '<C-w>>')
keymap.set('n', '<C-w><up>', '<C-w>+')
keymap.set('n', '<C-w><down>', '<C-w>-')

-- nvim-tree
keymap.set("n", "<Space>e", ":NvimTreeToggle<CR>")

-- telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files hidden=true no_ignore=true<cr>") -- find files within current working directory, respects .gitignore
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>") -- find string in current working directory as you type
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>") -- find string under cursor in current working directory
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>") -- list open buffers in current neovim instance
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>") -- list available help tags

--Copy to clipboard
keymap.set("v", "Y", "\"+y")

-- Floatterm
keymap.set("n", "<C-j>", "<cmd>FloatermToggle<CR>", { silent = true })
keymap.set("t", "<C-j>", "<C-\\><C-n>:FloatermToggle<CR>", { silent = true })
keymap.set("t", "<C-]>", "<C-\\><C-n>", { silent = true })

-- Aerial
vim.keymap.set('n', '<leader>a', '<cmd>AerialToggle!<CR>', { silent = true })
