local autocmd = vim.api.nvim_create_autocmd
local cmd = vim.cmd

cmd('autocmd!')

-- Don't auto comment new line
autocmd("BufEnter", {
	pattern = "*",
	command = "set fo-=c fo-=r fo-=o",
})

-- Return to last position when opening file
autocmd("BufReadPost", {
	pattern = "*",
	command = [[if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif]],
})

cmd "set whichwrap+=<,>,h,l,[,]"
cmd [[set iskeyword+=-]]
cmd("filetype plugin indent on")



-- Run current script with python3 by CTRL+R in normal and insert mode
cmd("autocmd FileType python map <buffer> <C-r> :w<cr>:exec '!python3' shellescape(@%, 1)<cr>")
cmd("autocmd FileType python imap <buffer> <C-r> <esc>:w<CR>:exec '!python3' shellescape(@%, 1)<cr>")
