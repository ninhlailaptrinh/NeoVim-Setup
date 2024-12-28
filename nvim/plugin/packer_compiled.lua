-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function("has", { "nvim-0.5" }) ~= 1 then
	vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
	return
end

vim.api.nvim_command("packadd packer.nvim")

local no_errors, error_msg = pcall(function()
	_G._packer = _G._packer or {}
	_G._packer.inside_compile = true

	local time
	local profile_info
	local should_profile = false
	if should_profile then
		local hrtime = vim.loop.hrtime
		profile_info = {}
		time = function(chunk, start)
			if start then
				profile_info[chunk] = hrtime()
			else
				profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
			end
		end
	else
		time = function(chunk, start) end
	end

	local function save_profiles(threshold)
		local sorted_times = {}
		for chunk_name, time_taken in pairs(profile_info) do
			sorted_times[#sorted_times + 1] = { chunk_name, time_taken }
		end
		table.sort(sorted_times, function(a, b)
			return a[2] > b[2]
		end)
		local results = {}
		for i, elem in ipairs(sorted_times) do
			if not threshold or threshold and elem[2] > threshold then
				results[i] = elem[1] .. " took " .. elem[2] .. "ms"
			end
		end
		if threshold then
			table.insert(results, "(Only showing plugins that took longer than " .. threshold .. " ms " .. "to load)")
		end

		_G._packer.profile_output = results
	end

	time([[Luarocks path setup]], true)
	local package_path_str =
		"/home/ninhlailaptrinh/.cache/nvim/packer_hererocks/2.1.1731601260/share/lua/5.1/?.lua;/home/ninhlailaptrinh/.cache/nvim/packer_hererocks/2.1.1731601260/share/lua/5.1/?/init.lua;/home/ninhlailaptrinh/.cache/nvim/packer_hererocks/2.1.1731601260/lib/luarocks/rocks-5.1/?.lua;/home/ninhlailaptrinh/.cache/nvim/packer_hererocks/2.1.1731601260/lib/luarocks/rocks-5.1/?/init.lua"
	local install_cpath_pattern = "/home/ninhlailaptrinh/.cache/nvim/packer_hererocks/2.1.1731601260/lib/lua/5.1/?.so"
	if not string.find(package.path, package_path_str, 1, true) then
		package.path = package.path .. ";" .. package_path_str
	end

	if not string.find(package.cpath, install_cpath_pattern, 1, true) then
		package.cpath = package.cpath .. ";" .. install_cpath_pattern
	end

	time([[Luarocks path setup]], false)
	time([[try_loadstring definition]], true)
	local function try_loadstring(s, component, name)
		local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
		if not success then
			vim.schedule(function()
				vim.api.nvim_notify(
					"packer.nvim: Error running " .. component .. " for " .. name .. ": " .. result,
					vim.log.levels.ERROR,
					{}
				)
			end)
		end
		return result
	end

	time([[try_loadstring definition]], false)
	time([[Defining packer_plugins]], true)
	_G.packer_plugins = {
		["Comment.nvim"] = {
			config = { "\27LJ\2\n.\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\19config.comment\frequire\0" },
			loaded = true,
			path = "/home/ninhlailaptrinh/.local/share/nvim/site/pack/packer/start/Comment.nvim",
			url = "https://github.com/numToStr/Comment.nvim",
		},
		LuaSnip = {
			loaded = true,
			path = "/home/ninhlailaptrinh/.local/share/nvim/site/pack/packer/start/LuaSnip",
			url = "https://github.com/L3MON4D3/LuaSnip",
		},
		["bufferline.nvim"] = {
			config = {
				"\27LJ\2\n8\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\15bufferline\frequire\0",
			},
			loaded = true,
			path = "/home/ninhlailaptrinh/.local/share/nvim/site/pack/packer/start/bufferline.nvim",
			url = "https://github.com/akinsho/bufferline.nvim",
		},
		["cmp-buffer"] = {
			loaded = true,
			path = "/home/ninhlailaptrinh/.local/share/nvim/site/pack/packer/start/cmp-buffer",
			url = "https://github.com/hrsh7th/cmp-buffer",
		},
		["cmp-cmdline"] = {
			loaded = true,
			path = "/home/ninhlailaptrinh/.local/share/nvim/site/pack/packer/start/cmp-cmdline",
			url = "https://github.com/hrsh7th/cmp-cmdline",
		},
		["cmp-nvim-lsp"] = {
			loaded = true,
			path = "/home/ninhlailaptrinh/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
			url = "https://github.com/hrsh7th/cmp-nvim-lsp",
		},
		["cmp-nvim-lsp-signature-help"] = {
			loaded = true,
			path = "/home/ninhlailaptrinh/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp-signature-help",
			url = "https://github.com/hrsh7th/cmp-nvim-lsp-signature-help",
		},
		["cmp-nvim-lua"] = {
			loaded = true,
			path = "/home/ninhlailaptrinh/.local/share/nvim/site/pack/packer/start/cmp-nvim-lua",
			url = "https://github.com/hrsh7th/cmp-nvim-lua",
		},
		["cmp-path"] = {
			loaded = true,
			path = "/home/ninhlailaptrinh/.local/share/nvim/site/pack/packer/start/cmp-path",
			url = "https://github.com/hrsh7th/cmp-path",
		},
		cmp_luasnip = {
			loaded = true,
			path = "/home/ninhlailaptrinh/.local/share/nvim/site/pack/packer/start/cmp_luasnip",
			url = "https://github.com/saadparwaiz1/cmp_luasnip",
		},
		["dotenv.nvim"] = {
			loaded = true,
			path = "/home/ninhlailaptrinh/.local/share/nvim/site/pack/packer/start/dotenv.nvim",
			url = "https://github.com/ellisonleao/dotenv.nvim",
		},
		["friendly-snippets"] = {
			loaded = true,
			path = "/home/ninhlailaptrinh/.local/share/nvim/site/pack/packer/start/friendly-snippets",
			url = "https://github.com/rafamadriz/friendly-snippets",
		},
		["gitsigns.nvim"] = {
			config = { "\27LJ\2\n/\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\20config.gitsigns\frequire\0" },
			loaded = true,
			path = "/home/ninhlailaptrinh/.local/share/nvim/site/pack/packer/start/gitsigns.nvim",
			url = "https://github.com/lewis6991/gitsigns.nvim",
		},
		["go.nvim"] = {
			config = { "\27LJ\2\n0\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\ago\frequire\0" },
			loaded = true,
			path = "/home/ninhlailaptrinh/.local/share/nvim/site/pack/packer/start/go.nvim",
			url = "https://github.com/ray-x/go.nvim",
		},
		["guihua.lua"] = {
			loaded = true,
			path = "/home/ninhlailaptrinh/.local/share/nvim/site/pack/packer/start/guihua.lua",
			url = "https://github.com/ray-x/guihua.lua",
		},
		["indent-blankline.nvim"] = {
			config = { "\27LJ\2\n7\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\28config.indent-blankline\frequire\0" },
			loaded = true,
			path = "/home/ninhlailaptrinh/.local/share/nvim/site/pack/packer/start/indent-blankline.nvim",
			url = "https://github.com/lukas-reineke/indent-blankline.nvim",
		},
		["lazygit.nvim"] = {
			loaded = true,
			path = "/home/ninhlailaptrinh/.local/share/nvim/site/pack/packer/start/lazygit.nvim",
			url = "https://github.com/kdheepak/lazygit.nvim",
		},
		["lsp-colors.nvim"] = {
			loaded = true,
			path = "/home/ninhlailaptrinh/.local/share/nvim/site/pack/packer/start/lsp-colors.nvim",
			url = "https://github.com/folke/lsp-colors.nvim",
		},
		["lspkind.nvim"] = {
			loaded = true,
			path = "/home/ninhlailaptrinh/.local/share/nvim/site/pack/packer/start/lspkind.nvim",
			url = "https://github.com/onsails/lspkind.nvim",
		},
		["lspsaga.nvim"] = {
			loaded = true,
			path = "/home/ninhlailaptrinh/.local/share/nvim/site/pack/packer/start/lspsaga.nvim",
			url = "https://github.com/glepnir/lspsaga.nvim",
		},
		["lualine.nvim"] = {
			config = { "\27LJ\2\n.\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\19config.lualine\frequire\0" },
			loaded = true,
			path = "/home/ninhlailaptrinh/.local/share/nvim/site/pack/packer/start/lualine.nvim",
			url = "https://github.com/nvim-lualine/lualine.nvim",
		},
		["marks.nvim"] = {
			config = {
				"\27LJ\2\n3\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\nmarks\frequire\0",
			},
			loaded = true,
			path = "/home/ninhlailaptrinh/.local/share/nvim/site/pack/packer/start/marks.nvim",
			url = "https://github.com/chentoast/marks.nvim",
		},
		["mason-lspconfig.nvim"] = {
			loaded = true,
			path = "/home/ninhlailaptrinh/.local/share/nvim/site/pack/packer/start/mason-lspconfig.nvim",
			url = "https://github.com/williamboman/mason-lspconfig.nvim",
		},
		["mason.nvim"] = {
			loaded = true,
			path = "/home/ninhlailaptrinh/.local/share/nvim/site/pack/packer/start/mason.nvim",
			url = "https://github.com/williamboman/mason.nvim",
		},
		["neodev.nvim"] = {
			loaded = true,
			path = "/home/ninhlailaptrinh/.local/share/nvim/site/pack/packer/start/neodev.nvim",
			url = "https://github.com/folke/neodev.nvim",
		},
		["null-ls.nvim"] = {
			config = { "\27LJ\2\n.\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\19config.null-ls\frequire\0" },
			loaded = true,
			path = "/home/ninhlailaptrinh/.local/share/nvim/site/pack/packer/start/null-ls.nvim",
			url = "https://github.com/jose-elias-alvarez/null-ls.nvim",
		},
		["nvim-autopairs"] = {
			config = { "\27LJ\2\n0\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\21config.autopairs\frequire\0" },
			loaded = true,
			path = "/home/ninhlailaptrinh/.local/share/nvim/site/pack/packer/start/nvim-autopairs",
			url = "https://github.com/windwp/nvim-autopairs",
		},
		["nvim-cmp"] = {
			loaded = true,
			path = "/home/ninhlailaptrinh/.local/share/nvim/site/pack/packer/start/nvim-cmp",
			url = "https://github.com/hrsh7th/nvim-cmp",
		},
		["nvim-colorizer.lua"] = {
			config = { "\27LJ\2\n0\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\21config.colorizer\frequire\0" },
			loaded = true,
			path = "/home/ninhlailaptrinh/.local/share/nvim/site/pack/packer/start/nvim-colorizer.lua",
			url = "https://github.com/norcalli/nvim-colorizer.lua",
		},
		["nvim-jdtls"] = {
			loaded = true,
			path = "/home/ninhlailaptrinh/.local/share/nvim/site/pack/packer/start/nvim-jdtls",
			url = "https://github.com/mfussenegger/nvim-jdtls",
		},
		["nvim-lspconfig"] = {
			loaded = true,
			path = "/home/ninhlailaptrinh/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
			url = "https://github.com/neovim/nvim-lspconfig",
		},
		["nvim-tree.lua"] = {
			config = { "\27LJ\2\n0\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\21config.nvim-tree\frequire\0" },
			loaded = true,
			path = "/home/ninhlailaptrinh/.local/share/nvim/site/pack/packer/start/nvim-tree.lua",
			url = "https://github.com/nvim-tree/nvim-tree.lua",
		},
		["nvim-treesitter"] = {
			config = { "\27LJ\2\n1\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\22config.treesitter\frequire\0" },
			loaded = true,
			path = "/home/ninhlailaptrinh/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
			url = "https://github.com/nvim-treesitter/nvim-treesitter",
		},
		["nvim-web-devicons"] = {
			loaded = true,
			path = "/home/ninhlailaptrinh/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
			url = "https://github.com/nvim-tree/nvim-web-devicons",
		},
		["omnisharp-vim"] = {
			loaded = true,
			path = "/home/ninhlailaptrinh/.local/share/nvim/site/pack/packer/start/omnisharp-vim",
			url = "https://github.com/OmniSharp/omnisharp-vim",
		},
		["onedark.nvim"] = {
			config = { "\27LJ\2\n.\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\19config.onedark\frequire\0" },
			loaded = true,
			path = "/home/ninhlailaptrinh/.local/share/nvim/site/pack/packer/start/onedark.nvim",
			url = "https://github.com/navarasu/onedark.nvim",
		},
		["packer.nvim"] = {
			loaded = true,
			path = "/home/ninhlailaptrinh/.local/share/nvim/site/pack/packer/start/packer.nvim",
			url = "https://github.com/wbthomason/packer.nvim",
		},
		["plenary.nvim"] = {
			loaded = true,
			path = "/home/ninhlailaptrinh/.local/share/nvim/site/pack/packer/start/plenary.nvim",
			url = "https://github.com/nvim-lua/plenary.nvim",
		},
		["tagalong.vim"] = {
			loaded = true,
			path = "/home/ninhlailaptrinh/.local/share/nvim/site/pack/packer/start/tagalong.vim",
			url = "https://github.com/AndrewRadev/tagalong.vim",
		},
		["telescope.nvim"] = {
			config = { "\27LJ\2\n0\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\21config.telescope\frequire\0" },
			loaded = true,
			path = "/home/ninhlailaptrinh/.local/share/nvim/site/pack/packer/start/telescope.nvim",
			url = "https://github.com/nvim-telescope/telescope.nvim",
		},
		["trouble.nvim"] = {
			config = { "\27LJ\2\n.\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\19config.trouble\frequire\0" },
			loaded = true,
			path = "/home/ninhlailaptrinh/.local/share/nvim/site/pack/packer/start/trouble.nvim",
			url = "https://github.com/folke/trouble.nvim",
		},
		["vim-dadbod"] = {
			loaded = true,
			path = "/home/ninhlailaptrinh/.local/share/nvim/site/pack/packer/start/vim-dadbod",
			url = "https://github.com/tpope/vim-dadbod",
		},
		["vim-dadbod-completion"] = {
			loaded = true,
			path = "/home/ninhlailaptrinh/.local/share/nvim/site/pack/packer/start/vim-dadbod-completion",
			url = "https://github.com/kristijanhusak/vim-dadbod-completion",
		},
		["vim-dadbod-ui"] = {
			config = {
				"\27LJ\2\n6\0\0\2\0\3\0\0056\0\0\0009\0\1\0)\1\1\0=\1\2\0K\0\1\0\25db_ui_use_nerd_fonts\6g\bvim\0",
			},
			loaded = true,
			path = "/home/ninhlailaptrinh/.local/share/nvim/site/pack/packer/start/vim-dadbod-ui",
			url = "https://github.com/kristijanhusak/vim-dadbod-ui",
		},
		["vim-floaterm"] = {
			config = { "\27LJ\2\n/\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\20config.floaterm\frequire\0" },
			loaded = true,
			path = "/home/ninhlailaptrinh/.local/share/nvim/site/pack/packer/start/vim-floaterm",
			url = "https://github.com/voldikss/vim-floaterm",
		},
		["vim-fugitive"] = {
			config = { "\27LJ\2\n*\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\15config.git\frequire\0" },
			loaded = true,
			path = "/home/ninhlailaptrinh/.local/share/nvim/site/pack/packer/start/vim-fugitive",
			url = "https://github.com/tpope/vim-fugitive",
		},
		["vim-jsx-pretty"] = {
			loaded = true,
			path = "/home/ninhlailaptrinh/.local/share/nvim/site/pack/packer/start/vim-jsx-pretty",
			url = "https://github.com/MaxMEllon/vim-jsx-pretty",
		},
		["vim-styled-components"] = {
			loaded = true,
			path = "/home/ninhlailaptrinh/.local/share/nvim/site/pack/packer/start/vim-styled-components",
			url = "https://github.com/styled-components/vim-styled-components",
		},
		["vim-surround"] = {
			loaded = true,
			path = "/home/ninhlailaptrinh/.local/share/nvim/site/pack/packer/start/vim-surround",
			url = "https://github.com/tpope/vim-surround",
		},
		["vim-tmux"] = {
			loaded = true,
			path = "/home/ninhlailaptrinh/.local/share/nvim/site/pack/packer/start/vim-tmux",
			url = "https://github.com/tmux-plugins/vim-tmux",
		},
		["vim-tmux-focus-events"] = {
			loaded = true,
			path = "/home/ninhlailaptrinh/.local/share/nvim/site/pack/packer/start/vim-tmux-focus-events",
			url = "https://github.com/tmux-plugins/vim-tmux-focus-events",
		},
		["vim-tmux-navigator"] = {
			loaded = true,
			path = "/home/ninhlailaptrinh/.local/share/nvim/site/pack/packer/start/vim-tmux-navigator",
			url = "https://github.com/christoomey/vim-tmux-navigator",
		},
		["vim-visual-multi"] = {
			loaded = true,
			path = "/home/ninhlailaptrinh/.local/share/nvim/site/pack/packer/start/vim-visual-multi",
			url = "https://github.com/mg979/vim-visual-multi",
		},
		vimux = {
			loaded = true,
			path = "/home/ninhlailaptrinh/.local/share/nvim/site/pack/packer/start/vimux",
			url = "https://github.com/preservim/vimux",
		},
		["vscode-react-javascript-snippets"] = {
			loaded = true,
			path = "/home/ninhlailaptrinh/.local/share/nvim/site/pack/packer/start/vscode-react-javascript-snippets",
			url = "https://github.com/dsznajder/vscode-react-javascript-snippets",
		},
		["which-key.nvim"] = {
			config = {
				"\27LJ\2\n7\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\14which-key\frequire\0",
			},
			loaded = true,
			path = "/home/ninhlailaptrinh/.local/share/nvim/site/pack/packer/start/which-key.nvim",
			url = "https://github.com/folke/which-key.nvim",
		},
	}

	time([[Defining packer_plugins]], false)
	-- Config for: go.nvim
	time([[Config for go.nvim]], true)
	try_loadstring(
		"\27LJ\2\n0\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\ago\frequire\0",
		"config",
		"go.nvim"
	)
	time([[Config for go.nvim]], false)
	-- Config for: nvim-treesitter
	time([[Config for nvim-treesitter]], true)
	try_loadstring(
		"\27LJ\2\n1\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\22config.treesitter\frequire\0",
		"config",
		"nvim-treesitter"
	)
	time([[Config for nvim-treesitter]], false)
	-- Config for: nvim-tree.lua
	time([[Config for nvim-tree.lua]], true)
	try_loadstring(
		"\27LJ\2\n0\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\21config.nvim-tree\frequire\0",
		"config",
		"nvim-tree.lua"
	)
	time([[Config for nvim-tree.lua]], false)
	-- Config for: onedark.nvim
	time([[Config for onedark.nvim]], true)
	try_loadstring(
		"\27LJ\2\n.\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\19config.onedark\frequire\0",
		"config",
		"onedark.nvim"
	)
	time([[Config for onedark.nvim]], false)
	-- Config for: trouble.nvim
	time([[Config for trouble.nvim]], true)
	try_loadstring(
		"\27LJ\2\n.\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\19config.trouble\frequire\0",
		"config",
		"trouble.nvim"
	)
	time([[Config for trouble.nvim]], false)
	-- Config for: null-ls.nvim
	time([[Config for null-ls.nvim]], true)
	try_loadstring(
		"\27LJ\2\n.\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\19config.null-ls\frequire\0",
		"config",
		"null-ls.nvim"
	)
	time([[Config for null-ls.nvim]], false)
	-- Config for: marks.nvim
	time([[Config for marks.nvim]], true)
	try_loadstring(
		"\27LJ\2\n3\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\nmarks\frequire\0",
		"config",
		"marks.nvim"
	)
	time([[Config for marks.nvim]], false)
	-- Config for: vim-floaterm
	time([[Config for vim-floaterm]], true)
	try_loadstring(
		"\27LJ\2\n/\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\20config.floaterm\frequire\0",
		"config",
		"vim-floaterm"
	)
	time([[Config for vim-floaterm]], false)
	-- Config for: lualine.nvim
	time([[Config for lualine.nvim]], true)
	try_loadstring(
		"\27LJ\2\n.\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\19config.lualine\frequire\0",
		"config",
		"lualine.nvim"
	)
	time([[Config for lualine.nvim]], false)
	-- Config for: nvim-colorizer.lua
	time([[Config for nvim-colorizer.lua]], true)
	try_loadstring(
		"\27LJ\2\n0\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\21config.colorizer\frequire\0",
		"config",
		"nvim-colorizer.lua"
	)
	time([[Config for nvim-colorizer.lua]], false)
	-- Config for: indent-blankline.nvim
	time([[Config for indent-blankline.nvim]], true)
	try_loadstring(
		"\27LJ\2\n7\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\28config.indent-blankline\frequire\0",
		"config",
		"indent-blankline.nvim"
	)
	time([[Config for indent-blankline.nvim]], false)
	-- Config for: Comment.nvim
	time([[Config for Comment.nvim]], true)
	try_loadstring(
		"\27LJ\2\n.\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\19config.comment\frequire\0",
		"config",
		"Comment.nvim"
	)
	time([[Config for Comment.nvim]], false)
	-- Config for: telescope.nvim
	time([[Config for telescope.nvim]], true)
	try_loadstring(
		"\27LJ\2\n0\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\21config.telescope\frequire\0",
		"config",
		"telescope.nvim"
	)
	time([[Config for telescope.nvim]], false)
	-- Config for: vim-fugitive
	time([[Config for vim-fugitive]], true)
	try_loadstring(
		"\27LJ\2\n*\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\15config.git\frequire\0",
		"config",
		"vim-fugitive"
	)
	time([[Config for vim-fugitive]], false)
	-- Config for: which-key.nvim
	time([[Config for which-key.nvim]], true)
	try_loadstring(
		"\27LJ\2\n7\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\14which-key\frequire\0",
		"config",
		"which-key.nvim"
	)
	time([[Config for which-key.nvim]], false)
	-- Config for: gitsigns.nvim
	time([[Config for gitsigns.nvim]], true)
	try_loadstring(
		"\27LJ\2\n/\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\20config.gitsigns\frequire\0",
		"config",
		"gitsigns.nvim"
	)
	time([[Config for gitsigns.nvim]], false)
	-- Config for: vim-dadbod-ui
	time([[Config for vim-dadbod-ui]], true)
	try_loadstring(
		"\27LJ\2\n6\0\0\2\0\3\0\0056\0\0\0009\0\1\0)\1\1\0=\1\2\0K\0\1\0\25db_ui_use_nerd_fonts\6g\bvim\0",
		"config",
		"vim-dadbod-ui"
	)
	time([[Config for vim-dadbod-ui]], false)
	-- Config for: nvim-autopairs
	time([[Config for nvim-autopairs]], true)
	try_loadstring(
		"\27LJ\2\n0\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\21config.autopairs\frequire\0",
		"config",
		"nvim-autopairs"
	)
	time([[Config for nvim-autopairs]], false)
	-- Config for: bufferline.nvim
	time([[Config for bufferline.nvim]], true)
	try_loadstring(
		"\27LJ\2\n8\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\15bufferline\frequire\0",
		"config",
		"bufferline.nvim"
	)
	time([[Config for bufferline.nvim]], false)

	_G._packer.inside_compile = false
	if _G._packer.needs_bufread == true then
		vim.cmd("doautocmd BufRead")
	end
	_G._packer.needs_bufread = false

	if should_profile then
		save_profiles()
	end
end)

if not no_errors then
	error_msg = error_msg:gsub('"', '\\"')
	vim.api.nvim_command(
		'echohl ErrorMsg | echom "Error in packer_compiled: '
			.. error_msg
			.. '" | echom "Please check your config for correctness" | echohl None'
	)
end
