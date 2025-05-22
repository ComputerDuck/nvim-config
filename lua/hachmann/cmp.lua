local cmp = require('cmp')

vim.api.nvim_set_hl(0, 'CmpItemKindFunction', { link = 'Function' })
vim.api.nvim_set_hl(0, 'CmpItemKindMethod', { link = 'Function' })
vim.api.nvim_set_hl(0, 'CmpItemKindClass', { link = 'Type' })
vim.api.nvim_set_hl(0, 'CmpItemKindStruct', { link = 'Type' })
vim.api.nvim_set_hl(0, 'CmpItemKindInterface', { link = 'Type' })
vim.api.nvim_set_hl(0, 'CmpItemKindVariable', { link = 'Identifier' })
vim.api.nvim_set_hl(0, 'CmpItemKindField', { link = 'Identifier' })
vim.api.nvim_set_hl(0, 'CmpItemKindProperty', { link = 'Identifier' })
vim.api.nvim_set_hl(0, 'CmpItemKindKeyword', { link = 'Keyword' })
vim.api.nvim_set_hl(0, 'CmpItemKindConstant', { link = 'Constant' })
vim.api.nvim_set_hl(0, 'CmpItemKindEnum', { link = 'Type' })
vim.api.nvim_set_hl(0, 'CmpItemKindEnumMember', { link = 'Constant' })

cmp.setup({
  mapping = cmp.mapping.preset.insert({
    ['<C-d>'] = cmp.mapping.scroll_docs(-4),
    ['<C-u>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.abort(),
    ['<CR>'] = cmp.mapping.confirm({ select = true }),
    ['<Tab>'] = cmp.mapping.select_next_item(),
    ['<S-Tab>'] = cmp.mapping.select_prev_item(),
  }),
  sources = cmp.config.sources({
    { name = 'nvim_lsp' },
  }, {
    { name = 'buffer' },
  }),
  

  window = {
    completion = {
      border = 'none',
      winhighlight = 'Normal:Pmenu,FloatBorder:PmenuBorder,CursorLine:PmenuSel,Search:None',
      scrollbar = false,
    },
    documentation = {
      border = 'none',
      winhighlight = 'Normal:Pmenu,FloatBorder:PmenuBorder',
    },
  },
  formatting = {
    fields = { 'abbr', 'menu', 'kind' },
    format = function(entry, vim_item)
      -- Source names
      vim_item.menu = ({
        nvim_lsp = "[lsp]",
        buffer = "[buffer]",
        path = "[path]",
        luasnip = "[snippet]",
        nvim_lua = "[lua]",
      })[entry.source.name] or "[*]"
      
      -- Keep the kind as text only - no icons
      -- This will use your colorscheme's syntax highlighting colors
      vim_item.kind = vim_item.kind
      
      return vim_item
    end
  },
})
