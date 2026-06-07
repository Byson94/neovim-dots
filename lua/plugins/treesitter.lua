return {
  'nvim-treesitter/nvim-treesitter',
  lazy = false,
  build = ':TSUpdate',
  config = function()
    require('nvim-treesitter').install({ 'rust', 'html', 'css', 'javascript', 'cpp', 'c', 'python', 'astro', 'svelte' })
  end
}
