return {
  "lukas-reineke/indent-blankline.nvim",
  config = function()
    require("ibl").setup {
      scope = {
        enabled = false,
        show_start = false,
      },
      indent = { char = "│" },
      exclude = {
        filetypes = {
          "log",
          "gitcommit",
          "dapui_scopes",
          "dapui_stacks",
          "dapui_watches",
          "dapui_breakpoints",
          "dapui_hover",
          "LuaTree",
          "dbui",
          "UltestSummary",
          "UltestOutput",
          "vimwiki",
          "json",
          "vista",
          "flutterToolsOutline",
          "org",
          "orgagenda",
          "startify",
          "neogitstatus",
          "checkhealth",
          "man",
          "git",
          "neo-tree",
          "TelescopeResults",
          "query",
          "tsplayground",
          "lazy",
          "lsp-installer",
          "markdown",
          "mason",
          "txt",
          "text",
          "dashboard",
          "alpha",
          "NvimTree",
          "undotree",
          "diff",
          "fugitive",
          "fugitiveblame",
          "Outline",
          "SidebarNvim",
          "packer",
          "lsp-installer",
          "TelescopePrompt",
          "help",
          "telescope",
          "lspinfo",
          "Trouble",
          "null-ls-info",
          "quickfix",
          "chadtree",
          "fzf",
          "NeogitStatus",
          "terminal",
          "console",
          "term://*",
          "Term://*",
          "toggleterm",
          "qf",
          "prompt",
          "noice",
          "",
        },
        buftypes = {
          "terminal",
          "nofile",
          "quickfix",
          "prompt",
        },
      },
    }
  end,
}
