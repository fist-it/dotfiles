local dap = require('dap')

dap.configurations.cpp = {
  type = 'cpp',
  request = 'launch',
  name = 'Launch file',
  program = "${file}",
}
