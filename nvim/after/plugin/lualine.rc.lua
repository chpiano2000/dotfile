local lualine = require'lualine'

lualine.setup {
  options = {
    icons_enabled = true,
    theme = 'solarized',
    section_separators = { left = '', right = '' },
    component_separators = { left = '', right = '' },
    disabled_filetypes = {}
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff', 'diagnostics'},
    lualine_c = {{
      'filename',
      file_status = true,
      path = 0
    }},
    lualine_x = {
      {'diagnostics', sources = { "nvim_diagnostic" }, symbols = { error = ' ', warn = ' ', info = '' } },
      'fileformat', 
      'filetype'
    },
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  }
}

