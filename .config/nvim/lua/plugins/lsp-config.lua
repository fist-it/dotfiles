return {
  {
    'mason-org/mason.nvim',
    -- tag = 'v1.11.0',
    pin = true,
    lazy = false,
    opts = {},
  },
  {
    'mason-org/mason-lspconfig.nvim',
    -- tag = 'v1.32.0',
    pin = true,
    lazy = true,
    config = false,
  },
  {
    'neovim/nvim-lspconfig',
    pin = true,
    cmd = { "LspInfo", "LspStart", "LspStop" },
    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
      { 'hrsh7th/cmp-nvim-lsp' },
      { 'mason-org/mason.nvim' },
      { 'mason-org/mason-lspconfig.nvim' },
    },
    init = function()
      vim.opt.signcolumn = 'yes'
    end,
    config = function()
      local lsp_defaults = require('lspconfig').util.default_config

      lsp_defaults.capabilities = vim.tbl_deep_extend(
        'force',
        lsp_defaults.capabilities,
        require('cmp_nvim_lsp').default_capabilities()
      )

      -- LspAttach is where you enable features that only work
      -- if there is a language server active in the file
      vim.api.nvim_create_autocmd('LspAttach', {
        group = vim.api.nvim_create_augroup('user_lsp_attach', { clear = true }),
        callback = function(event)
          vim.keymap.set('n', 'gd', function() vim.lsp.buf.definition() end,
            { desc = "go to definition", buffer = event.buf })
          --
          -- vim.keymap.set('n', 'K', function() vim.lsp.buf.hover() end,
          --   { desc = "display hover information", buffer = event.buf })
          vim.keymap.set('n', 'K', '<cmd>Lspsaga hover_doc<CR>',
            { desc = "display hover information", buffer = event.buf })

          vim.keymap.set('n', '<leader>vws', '<cmd>Lspsaga finder<CR>',
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

      -- set Error/Warning/Info/Hint signs
      vim.diagnostic.config({
        signs = {
          text = {
            [vim.diagnostic.severity.ERROR] = '✗',
            [vim.diagnostic.severity.WARN] = '⚠',
            [vim.diagnostic.severity.INFO] = 'ℹ',
            [vim.diagnostic.severity.HINT] = '➤',
          },
          linehl = {
            [vim.diagnostic.severity.ERROR] = 'ErrorMsg'
          },
          numhl = {
            [vim.diagnostic.severity.WARN] = 'WarningMsg',
          },
        }
      })


      require('mason-lspconfig').setup({
        ensure_installed = {},
        handlers = {
          function(server_name)
            require('lspconfig')[server_name].setup({})
          end,
        }
      })
    end
  },


  {
    'hrsh7th/nvim-cmp',
    event = { "InsertEnter" },
    config = function()
      local cmp = require('cmp')

      cmp.setup({
        sources = {
          { name = 'nvim_lsp' },
          { name = 'path' }
        },
        mapping = {
          ['<C-Space>'] = cmp.mapping.complete(),
          ['<C-e>'] = cmp.mapping.close(),
          ['<CR>'] = cmp.mapping.confirm({ select = true }),
          ['<C-j>'] = cmp.mapping.select_next_item(),
          ['<C-k>'] = cmp.mapping.select_prev_item(),
        },
        snippet = {
          expand = function(args)
            vim.snippet.expand(args.body)
          end,
        },
      })
    end
  },
  {
    'nvimdev/lspsaga.nvim',
    config = function()
      require('lspsaga').setup({
        lightbulb = {
          enable = true,
          sign = false,
          virtual_text = true,
        },
        symbol_in_winbar = {
          enable = false,
        }
      })
    end,
    dependencies = {
      'nvim-treesitter/nvim-treesitter', -- optional
      'nvim-tree/nvim-web-devicons',     -- optional
    }
  },
  { 'hrsh7th/cmp-path' },
  { 'hrsh7th/cmp-nvim-lsp' },

  -- Snippets
  { 'L3MON4D3/LuaSnip',            run = "make install_jsregexp" },
  { 'rafamadriz/friendly-snippets' },
}
