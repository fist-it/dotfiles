return {
  'VonHeikemen/lsp-zero.nvim',
  branch = 'v1.x',

  -- dependencies {{{
  dependencies = {
    -- LSP Support
    { 'neovim/nvim-lspconfig' },
    { 'williamboman/mason.nvim' },
    { 'williamboman/mason-lspconfig.nvim' },

    -- Autocompletion
    { 'hrsh7th/nvim-cmp' },
    { 'hrsh7th/cmp-buffer' },
    { 'hrsh7th/cmp-path' },
    { 'saadparwaiz1/cmp_luasnip' },
    { 'hrsh7th/cmp-nvim-lsp' },
    { 'hrsh7th/cmp-nvim-lua' },

    -- Snippets
    { 'L3MON4D3/LuaSnip',                 run = "make install_jsregexp" },
    { 'rafamadriz/friendly-snippets' },
  },
  -- }}}

  config = function()
    local lsp = require("lsp-zero")

    lsp.preset("recommended")

    lsp.set_sign_icons({
      error = '✘',
      warn = '▲',
      hint = '⚑',
      info = '»'
    })

    -- only set keymaps on lsp attach {{{
    vim.api.nvim_create_autocmd('LspAttach', {
      group = vim.api.nvim_create_augroup('user_lsp_attach', { clear = true }),
      callback = function(event)
        vim.keymap.set('n', 'gd', function() vim.lsp.buf.definition() end,
          { desc = "go to definition", buffer = event.buf })
        vim.keymap.set('n', 'K', function() vim.lsp.buf.hover() end,
          { desc = "display hover information", buffer = event.buf })
        vim.keymap.set('n', '<leader>vws', function() vim.lsp.buf.workspace_symbol() end,
          { desc = "view workspace symbol (find in workspace)", buffer = event.buf })
        vim.keymap.set('n', 'gl', function() vim.diagnostic.open_float() end,
          { desc = "open floating diagnostics window", buffer = event.buf })
        vim.keymap.set('n', '[d', function() vim.diagnostic.goto_next() end,
          { desc = "go to next diagnostic", buffer = event.buf })
        vim.keymap.set('n', ']d', function() vim.diagnostic.goto_prev() end,
          { desc = "go to previous diagnostic", buffer = event.buf })
        vim.keymap.set('n', '<leader>vca', function() vim.lsp.buf.code_action() end,
          { desc = "code action (?)", buffer = event.buf })
        vim.keymap.set('n', '<leader>vrr', function() vim.lsp.buf.references() end,
          { desc = "view references", buffer = event.buf })
        vim.keymap.set('n', '<leader>vrn', function() vim.lsp.buf.rename() end,
          { desc = "rename variable", buffer = event.buf })
        vim.keymap.set({ 'n', 'i' }, '<C-h>', function() vim.lsp.buf.signature_help() end,
          { desc = "signature help", buffer = event.buf })
      end,
    })
    -- }}}


    local lsp_capabilities = require('cmp_nvim_lsp').default_capabilities()

    require('mason').setup({
      ui = {
        icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗"
        }
      }
    })

    require('mason-lspconfig').setup({
      ensure_installed = {},
      handlers = {
        function(server_name)
          require('lspconfig')[server_name].setup({
            capabilities = lsp_capabilities,
          })
        end,
        lua_ls = function()
          require('lspconfig').lua_ls.setup({
            capabilities = lsp_capabilities,
            settings = {
              Lua = {
                runtime = {
                  version = 'LuaJIT'
                },
                diagnostics = {
                  globals = { 'vim' },
                },
                workspace = {
                  library = {
                    vim.env.VIMRUNTIME,
                  }
                }
              }
            }
          })
        end,
      }
    })

    local cmp = require('cmp')
    local cmp_select = { behavior = cmp.SelectBehavior.Select }

    -- this is the function that loads the extra snippets to luasnip
    -- from rafamadriz/friendly-snippets
    require('luasnip.loaders.from_vscode').lazy_load()

    cmp.setup({
      sources = {
        { name = 'path' },
        { name = 'nvim_lsp' },
        { name = 'luasnip', keyword_length = 2 },
      },
      mapping = cmp.mapping.preset.insert({
        ['<C-k>'] = cmp.mapping.select_prev_item(cmp_select),
        ['<C-j>'] = cmp.mapping.select_next_item(cmp_select),
        ['<C-Space>'] = cmp.mapping.confirm({ select = true }),
      }),
      snippet = {
        expand = function(args)
          require('luasnip').lsp_expand(args.body)
        end,
      },
    })
    lsp.setup_nvim_cmp({
      mapping = cmp.mappings
    })

    lsp.setup()
  end
}
