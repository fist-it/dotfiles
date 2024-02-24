local lsp = require("lsp-zero")

lsp.preset("recommended")

lsp.ensure_installed({
  'tsserver',
  'eslint',
  'rust_analyzer',
})


lsp.set_sign_icons({
  error = '✘',
  warn = '▲',
  hint = '⚑',
  info = '»'
})




local cmp = require('cmp')
local cmp_select = {behavior = cmp.SelectBehavior.Select}
local cmp_mappings = lsp.defaults.cmp_mappings({
  ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
  ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
  ['<C-y>'] = cmp.mapping.confirm({
    select = true,
  }),
  ['<C-Space>'] = cmp.mapping.complete(),
})

lsp.setup_nvim_cmp({
  mapping = cmp.mappings
})



lsp.setup()

