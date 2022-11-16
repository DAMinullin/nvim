require("nvim-treesitter.configs").setup{
	ensure_installed = { "python", "lua" },
  sync_install = false,
  --ignore_install = { "javascript" },
  highlight = {
    enable = true,
    --disable = { "c", "rust" },
    --disable = function(lang, buf)
    --    local max_filesize = 100 * 1024 -- 100 KB
    --    local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
    --    if ok and stats and stats.size > max_filesize then
    --        return true
    --    end
    --end,
    additional_vim_regex_highlighting = false,
  },
	indent = {
		enable = true,
		disable = { "" },
	},
	rainbow = {
    enable = true,
    disable = { "python" },
    --extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
    --max_file_lines = nil, -- Do not enable for files with more than n lines, int
    -- colors = {}, -- table of hex strings
    -- termcolors = {} -- table of colour name strings
  }
}
