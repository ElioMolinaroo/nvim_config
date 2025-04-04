local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable",
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

require("vim-options")
require("lazy").setup("plugins")

-- Execution keymaps
vim.keymap.set("n", "<S-R>", ":! python %<CR>")
vim.keymap.set({ "n", "v" }, "<S-Y>", '"+y<CR>')

-- Vim motions shortcuts
vim.keymap.set('i', '<F13>', '<Esc>', { noremap = true, silent = true })
vim.keymap.set('v', '<F13>', '<Esc>', { noremap = true, silent = true })
vim.keymap.set('c', '<F13>', '<Esc>', { noremap = true, silent = true })
vim.keymap.set('t', '<F13>', '<C-\\><C-n>', { noremap = true, silent = true })
vim.keymap.set('o', '<F13>', '<Esc>', { noremap = true, silent = true })

-- Use Powershell as  default terminal if the system is not UNIX-based
if vim.fn.has("win32") == 1 then
	vim.o.shell = "powershell.exe"
end
