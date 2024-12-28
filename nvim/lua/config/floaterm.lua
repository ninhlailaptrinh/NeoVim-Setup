-- Cấu hình Floaterm với đường dẫn đúng
vim.g.floaterm_shell = "zsh"
vim.g.floaterm_width = 0.8
vim.g.floaterm_height = 0.8
vim.g.floaterm_position = "center"

-- Sử dụng đường viền mặc định
--vim.g.floaterm_borderchars = "─│─│╭╮╯╰"
vim.g.floaterm_borderchars = { "─", "│", "─", "│", "╭", "╮", "╯", "╰" }

-- Màu sắc đơn giản
vim.cmd([[
  hi FloatermBorder guibg=NONE guifg=#98c379
]])

vim.g.floaterm_wintype = "float"

