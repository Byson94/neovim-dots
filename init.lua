require("config.lazy")

vim.api.nvim_create_autocmd('FileType', {
  pattern = { 'svelte', 'rust', 'html', 'css', 'javascript', 'python', 'astro', 'cpp', 'c' },
  callback = function()
    vim.treesitter.start()
  end,
})
