local n = require"nvim-tree"

vim.g.loaded = 1
vim.g.loaded_netrwPlugin = 1

n.setup({
  open_on_tab = true,
  view = {
    side="right"
  },    
  update_focused_file = {
      enable = true,
  }
})

vim.api.nvim_create_autocmd('BufEnter', {
    command = "if winnr('$') == 1 && bufname() == 'NvimTree_' . tabpagenr() | quit | endif",
    nested = true,
})
vim.g.nvim_tree_respect_buf_cwd = 1
