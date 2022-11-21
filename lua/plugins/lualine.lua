local status_ok, lualine = pcall(require, "lualine")

if not status_ok then
	vim.notify("lualine not found")
	return
end

lualine.setup({
	options = {
    icons_enabled = true,
    theme = 'darkplus',
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
    disabled_filetypes = {
      statusline = {},
      winbar = {},
    },
    ignore_focus = {},
    always_divide_middle = true,
    globalstatus = true,
    refresh = {
      statusline = 1000,
      tabline = 1000,
      winbar = 1000,
    }
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff', 'diagnostics'},
    lualine_c = {
			{
				'filename',
				symbols = {
					modified = ' ●',      -- Text to show when the buffer is modified
					alternate_file = '#', -- Text to show to identify the alternate file
					directory =  '',     -- Text to show when the buffer is a directory
				},
			},
		},
    lualine_x = {'encoding', 'fileformat', 'filetype'},
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
  },
  tabline = {},
  winbar = {},
  inactive_winbar = {},
  extensions = {}
})
