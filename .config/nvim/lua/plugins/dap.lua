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

			dap.listeners.after.event_initialized['dapui_config'] = function()
				ui.open()
			end
			dap.listeners.before.event_terminated['dapui_config'] = function()
				ui.close()
			end
			dap.listeners.before.event_exited['dapui_config'] = function()
				ui.close()
			end

			vim.keymap.set("n", "<leader>?", function()
				ui.eval(nil, { enter = true })
			end)

			-- Keybindings for DAP
			vim.api.nvim_set_keymap('n', '<leader>b', ":lua require'dap'.toggle_breakpoint()<CR>",
				{ noremap = true, silent = true })
			vim.api.nvim_set_keymap('n', '<leader>cc', ":lua require'dap'.run_to_cursor()<CR>",
				{ noremap = true, silent = true })
			vim.api.nvim_set_keymap('n', '<leader>dc', ":lua require'dap'.continue()<CR>",
				{ noremap = true, silent = true })
			vim.api.nvim_set_keymap('n', '<leadec>n', ":lua require'dap'.step_over()<CR>",
				{ noremap = true, silent = true })
			vim.api.nvim_set_keymap('n', '<leader>dsi', ":lua require'dap'.step_into()<CR>",
				{ noremap = true, silent = true })
			vim.api.nvim_set_keymap('n', '<leader>dso', ":lua require'dap'.step_out()<CR>",
				{ noremap = true, silent = true })
		end
	}
}
