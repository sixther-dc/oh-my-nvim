-- lazy plugin
require("lazy").setup({
  "navarasu/onedark.nvim",
  { "nvim-tree/nvim-tree.lua", dependencies = "nvim-tree/nvim-web-devicons" },
  "lukas-reineke/indent-blankline.nvim",
  -- bufferline,
  { "akinsho/bufferline.nvim", version = "*", dependencies = { "nvim-tree/nvim-web-devicons", "moll/vim-bbye" }},
  -- lualine,
  { "nvim-lualine/lualine.nvim", dependencies = { } },
  "arkav/lualine-lsp-progress",
  -- telescope,
  { 'nvim-telescope/telescope.nvim', dependencies = { "nvim-lua/plenary.nvim" } },
  -- dashboard-nvim,
  "glepnir/dashboard-nvim",
  -- project,
  "ahmedkhalf/project.nvim",
  -- treesitter,
  { "nvim-treesitter/nvim-treesitter" },
  {"akinsho/toggleterm.nvim", version = "*", config = true},
  --------------------- LSP --------------------,
  { "williamboman/mason.nvim" },
  { "williamboman/mason-lspconfig.nvim" },
  -- Lspconfig,
  { "neovim/nvim-lspconfig" },
  { "ray-x/go.nvim" },
  { "ray-x/guihua.lua" },
  { "folke/neodev.nvim" },
  -- 补全引擎,
  "hrsh7th/nvim-cmp",
  -- snippet 引擎,
  "hrsh7th/vim-vsnip",
  -- 补全源,
  "hrsh7th/cmp-vsnip",
  "hrsh7th/cmp-nvim-lsp", -- { name = nvim_lsp }
  "hrsh7th/cmp-buffer", -- { name = 'buffer' }
  "hrsh7th/cmp-path", -- { name = 'path' },
  "hrsh7th/cmp-cmdline", -- { name = 'cmdline' }
  "windwp/nvim-autopairs",
  -- indent-blankline,
  "lukas-reineke/indent-blankline.nvim",
  -- suport rust
  "simrat39/rust-tools.nvim",
  { "toppair/peek.nvim", build = 'deno task --quiet build:fast' },
  "numToStr/Comment.nvim",
  {
    'stevearc/aerial.nvim',
    opts = {},
    -- Optional dependencies
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
      "nvim-tree/nvim-web-devicons"
    },
  }
})
