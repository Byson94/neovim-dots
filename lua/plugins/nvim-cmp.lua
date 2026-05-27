return {
  'hrsh7th/nvim-cmp',
  lazy = false,
  dependencies = {
    'hrsh7th/cmp-buffer',
  },
  config = function()
    local cmp = require('cmp')
    cmp.setup({
      sources = {
        { name = 'buffer' },
      },
      mapping = cmp.mapping.preset.insert({
        ['<C-n>'] = cmp.mapping.select_next_item(),
        ['<C-p>'] = cmp.mapping.select_prev_item(),
        ['<CR>'] = cmp.mapping.confirm({ select = true }),
        ['<C-e>'] = cmp.mapping.abort(),
      }),
    })
  end
}
