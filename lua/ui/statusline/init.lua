
require('lualine').setup{
  options = {
    theme  = 'auto',
 	section_separators = {'', ''},
  	component_separators = {'', ''},
    icons_enabled = true,
  },
  sections = {
    lualine_a = { {'mode', upper = true} },
    lualine_b = { {'branch', icon = ''} },
    lualine_c = { {'filename', file_status = true} },
    lualine_x = {'g:coc_status', 'bo:filetype'},
    lualine_y = { 'encoding', 'fileformat', 'filetype' },
    lualine_z = { 'progress' },
  },
    inactive_sections = {
    lualine_a = {  },
    lualine_b = {  },
    lualine_c = { 'filename' },
    lualine_x = { 'location' },
    lualine_y = {  },
    lualine_z = {   }
  },
  tabline = {
  lualine_a = {},
  lualine_b = {'branch'},
  lualine_c = {'filename'},
  lualine_x = {},
  lualine_y = {},
  lualine_z = {}
}

}

