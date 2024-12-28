return require("packer").startup(function(use)
	-- Packer có thể tự quản lý
	use("wbthomason/packer.nvim")

	-- Theme
	use({
		"navarasu/onedark.nvim",
		config = function()
			require("config.onedark")
		end,
	})

	-- Status line đẹp
	use({
		"nvim-lualine/lualine.nvim",
		requires = { "nvim-tree/nvim-web-devicons" },
		config = function()
			require("config.lualine")
		end,
	})

	-- File explorer
	use({
		"nvim-tree/nvim-tree.lua",
		requires = { "nvim-tree/nvim-web-devicons" },
		config = function()
			require("config.nvim-tree")
		end,
	})

	-- Telescope - Công cụ tìm kiếm mạnh mẽ
	use({
		"nvim-telescope/telescope.nvim",
		requires = { "nvim-lua/plenary.nvim" },
		config = function()
			require("config.telescope")
		end,
	})

	-- Indent guides - Hiển thị đường dẫn thụt lề
	use({
		"lukas-reineke/indent-blankline.nvim",
		main = "ibl",
		config = function()
			require("config.indent-blankline")
		end,
	})

	-- Tự động đóng cặp ngoặc
	use({
		"windwp/nvim-autopairs",
		config = function()
			require("config.autopairs")
		end,
	})

	-- Terminal nổi trong Neovim
	use({
		"voldikss/vim-floaterm",
		config = function()
			require("config.floaterm")
		end,
	})

	-- LSP & Mason - Quản lý và cài đặt LSP servers
	use({
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
		"neovim/nvim-lspconfig",
		"folke/neodev.nvim", -- Thêm LSP cho Lua/Neovim API
	})

	-- Completion - Gợi ý code tự động
	use({
		"hrsh7th/nvim-cmp",
		requires = {
			"hrsh7th/cmp-nvim-lsp",
			"hrsh7th/cmp-buffer",
			"hrsh7th/cmp-path",
			"hrsh7th/cmp-cmdline",
			"saadparwaiz1/cmp_luasnip",
			"hrsh7th/cmp-nvim-lsp-signature-help",
			"hrsh7th/cmp-nvim-lua",
		},
	})

	-- Snippets - Các đoạn code mẫu
	use({
		"L3MON4D3/LuaSnip",
		requires = {
			"rafamadriz/friendly-snippets",
		},
	})

	-- UI cho LSP - Làm đẹp giao diện LSP
	use({
		"onsails/lspkind.nvim",
		"folke/lsp-colors.nvim",
		"glepnir/lspsaga.nvim",
	})

	-- Git integration và plugins
	use({
		"lewis6991/gitsigns.nvim",
		config = function()
			require("config.gitsigns")
		end,
	})
	use({
		"tpope/vim-fugitive",
		config = function()
			require("config.git")
		end,
	})
	use({
		"kdheepak/lazygit.nvim",
		requires = { "nvim-lua/plenary.nvim" },
	})

	-- Syntax highlighting và formatting
	use({
		"nvim-treesitter/nvim-treesitter",
		run = ":TSUpdate",
		config = function()
			require("config.treesitter")
		end,
	})

	use({
		"numToStr/Comment.nvim",
		config = function()
			require("config.comment")
		end,
	})

	use({
		"folke/which-key.nvim",
		config = function()
			require("which-key").setup()
		end,
	})

	use({
		"akinsho/bufferline.nvim",
		requires = "nvim-tree/nvim-web-devicons",
		config = function()
			require("config.bufferline").setup()
		end,
	})

	use({
		"jose-elias-alvarez/null-ls.nvim",
		requires = { "nvim-lua/plenary.nvim" },
		config = function()
			require("config.null-ls")
		end,
	})

	use({
		"folke/trouble.nvim",
		requires = "nvim-tree/nvim-web-devicons",
		config = function()
			require("config.trouble")
		end,
	})

	-- Frontend development tools
	use("AndrewRadev/tagalong.vim")
	use({
		"norcalli/nvim-colorizer.lua",
		config = function()
			require("config.colorizer")
		end,
	})
	use("MaxMEllon/vim-jsx-pretty")
	use({
		"dsznajder/vscode-react-javascript-snippets",
		build = "yarn install --frozen-lockfile && yarn compile",
	})
	use({
		"styled-components/vim-styled-components",
		branch = "main",
	})

	-- Utility plugins
	use("tpope/vim-surround")
	use("mg979/vim-visual-multi")

	-- Database và Docker
	use({
		"kristijanhusak/vim-dadbod-ui",
		requires = {
			"tpope/vim-dadbod",
			"kristijanhusak/vim-dadbod-completion",
		},
		config = function()
			vim.g.db_ui_use_nerd_fonts = 1
		end,
	})

	use({
		"chentoast/marks.nvim",
		config = function()
			require("marks").setup()
		end,
	})

	use("ellisonleao/dotenv.nvim")

	-- Tmux integration
	use({
		"christoomey/vim-tmux-navigator",
		"preservim/vimux",
		"tmux-plugins/vim-tmux",
		"tmux-plugins/vim-tmux-focus-events",
	})

	-- Language Support
	use("mfussenegger/nvim-jdtls")
	use("OmniSharp/omnisharp-vim")
	use({
		"ray-x/go.nvim",
		requires = {
			"ray-x/guihua.lua",
			"neovim/nvim-lspconfig", -- Đã được khai báo ở trên trong phần LSP
			"nvim-treesitter/nvim-treesitter", -- Đã được khai báo ở trên trong phần Syntax highlighting
		},
		config = function()
			require("go").setup()
		end,
	})

	--  if packer_bootstrap then
	--   require('packer').sync()
	--end
end)
