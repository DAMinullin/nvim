require('telescope').setup{
  defaults = {
    -- Default configuration for telescope goes here:
    -- config_key = value,
    mappings = {
      i = {
				["<esc>"] = "close",
      }
    }
  },
  pickers = {
    -- Default configuration for builtin pickers goes here:
    -- picker_name = {
    --   picker_config_key = value,
    --   ...
    -- }
    -- Now the picker_config_key will be applied every time you call this
    -- builtin picker
  },
  extensions = {
		fzf = {
      fuzzy = true,                   
      override_generic_sorter = true, 
      override_file_sorter = true,
      case_mode = "smart_case",
		}	
  }
}
