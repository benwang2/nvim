local function get_capabilities()
  local capabilities = vim.lsp.protocol.make_client_capabilities()
  capabilities = vim.tbl_deep_extend("force", capabilities, require("cmp_nvim_lsp").default_capabilities())

  -- Enable manually file watcher capability, so luau-lsp will be aware of sourcemap.json changes, this
  -- is done internally in Neovim 0.10+, but only for non Linux systems
  capabilities.workspace.didChangeWatchedFiles.dynamicRegistration = true
end

return {
    "lopi-py/luau-lsp.nvim",
    config = function()
      -- We call `require("luau-lsp").setup` instead of `require("lspconfig").luau_lsp.setup` because luau-lsp.nvim will
      -- add extra features to luau-lsp, so we don't need to call lspconfig's setup
      --
      -- See https://github.com/lopi-py/luau-lsp.nvim
      require("luau-lsp").setup {
        plugin = {
          enabled = true,
        },
		sourcemap = {
			enabled = false,
		},
        server = {
          capabilities = get_capabilities(),
          settings = {
            ["luau-lsp"] = {
              completion = {
                imports = {
                  enabled = true,
                },
              },
            },
          },
        },
      }
    end,
    dependencies = {
      "nvim-lua/plenary.nvim",
      "neovim/nvim-lspconfig",
    },
  }
