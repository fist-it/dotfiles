return {
  {
    "mfussenegger/nvim-dap",
    dependencies = {
      "rcarriga/nvim-dap-ui",
      "theHamsta/nvim-dap-virtual-text",
      "nvim-neotest/nvim-nio",
      "williamboman/mason.nvim"
    },
    config = function()
      local dap = require 'dap'
      local ui = require 'dapui'

      ui.setup();

      dap.adapters.lldb = {
        type = 'executable',
        command = '/usr/bin/lldb',
        name = 'lldb'
      }

      dap.configurations.cpp = {
        {
          name = 'Launch',
          type = 'lldb',
          request = 'launch',
          program = function()
            return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/',
              'file')
          end,
          cwd = '${workspaceFolder}',
          stopOnEntry = false,
          args = {},
          runInTerminal = true,
        },
      }

      dap.configurations.go = {
        {
          type = 'go',
          name = 'Debug',
          request = 'launch',
          program = '${file}',
          dlvToolPath = vim.fn.exepath('dlv')
        }
      }



      local dapui = require("dapui")
      dap.listeners.before.attach.dapui_config = function()
        dapui.open()
      end
      dap.listeners.before.launch.dapui_config = function()
        dapui.open()
      end
      dap.listeners.before.event_terminated.dapui_config = function()
        dapui.close()
      end
      dap.listeners.before.event_exited.dapui_config = function()
        dapui.close()
      end


      vim.keymap.set("n", "<leader>?", function()
        ui.eval(nil, { enter = true })
      end, { desc = "Evaluate expression under cursor" })

      -- Keybindings for DAP
      vim.keymap.set({ 'n', 'v' }, '<leader>db', function() require 'dap'.toggle_breakpoint() end,
        {
          noremap = true,
          silent = true,
          desc = "Toggle breakpoint"
        })

      vim.keymap.set({ 'n', 'v' }, '<leader>dr', function() require 'dap'.run_to_cursor() end,
        {
          noremap = true,
          silent = true,
          desc = "Run to cursor"
        })

      vim.keymap.set({ 'n', 'v' }, '<leader>dc', function() require 'dap'.continue() end,
        {
          noremap = true,
          silent = true,
          desc = "Continue"
        })

      vim.keymap.set({ 'n', 'v' }, '<leader>dsi', function() require 'dap'.step_into() end,
        {
          noremap = true,
          silent = true,
          desc = "Step into"
        })

      vim.keymap.set({ 'n', 'v' }, '<leader>dso', function() require 'dap'.step_out() end,
        {
          noremap = true,
          silent = true,
          desc = "Step out"
        })

      vim.keymap.set({ 'n', 'v' }, '<leader>duo', function() require 'dapui'.open() end,
        {
          noremap = true,
          silent = true,
          desc = "Open DAP UI"
        })

      vim.keymap.set({ 'n', 'v' }, '<leader>duc', function() require 'dapui'.close() end,
        {
          noremap = true,
          silent = true,
          desc = "Close DAP UI"
        })

      vim.keymap.set({ 'n', 'v' }, '<leader>do', function() require 'dap'.step_over() end,
        {
          noremap = true,
          silent = true,
          desc = "Step over"
        })

      vim.keymap.set({ 'n', 'v' }, '<Leader>dp', function()
        require('dap.ui.widgets').preview()
      end, {
        noremap = true,
        silent = true,
        desc = "Preview"
      })

      vim.keymap.set('n', '<Leader>df', function()
        local widgets = require('dap.ui.widgets')
        widgets.centered_float(widgets.frames)
      end, {
        noremap = true,
        silent = true,
        desc = "Show frames"
      })

      vim.keymap.set('n', '<Leader>dss', function()
        local widgets = require('dap.ui.widgets')
        widgets.centered_float(widgets.scopes)
      end, {
        noremap = true,
        silent = true,
        desc = "Show scopes"
      })
    end
  }
}
