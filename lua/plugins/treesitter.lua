return {
  'nvim-treesitter/nvim-treesitter',
  lazy = false,
  build = ':TSUpdate',
  config = function()
    require('nvim-treesitter').install({ 
        'rust', 'html', 'html_tags', 'css', 'javascript', 'typescript', 'cpp', 'c', 'python', 'astro', 'svelte' 
    })
    require('nvim-treesitter').setup {
        install_dir = vim.fn.stdpath('data') .. '/site'
    }
  end
}
