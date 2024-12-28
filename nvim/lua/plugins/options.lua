local opt = vim.opt

-- Số dòng
opt.number = true

-- Tab & indent
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

-- Tìm kiếm
opt.ignorecase = true
opt.smartcase = true

-- Appearance
opt.termguicolors = true
opt.signcolumn = "yes"
opt.cursorline = true

-- Clipboard
opt.clipboard = "unnamedplus"

-- Split windows
opt.splitright = true
opt.splitbelow = true

vim.opt.shada = ""

-- vim.g.clipboard = {
--   name = 'wl-clipboard',
--   copy = {
--     ['+'] = 'wl-copy',
--     ['*'] = 'wl-copy',
--   },
--   paste = {
--     ['+'] = 'wl-paste',
--     ['*'] = 'wl-paste',
--   },
--   cache_enabled = 0,
-- }

vim.g.clipboard = {
	name = "win32yank",
	copy = {
		["+"] = "win32yank.exe -i --crlf",
		["*"] = "win32yank.exe -i --crlf",
	},
	paste = {
		["+"] = "win32yank.exe -o --lf",
		["*"] = "win32yank.exe -o --lf",
	},
	cache_enabled = 0,
}
