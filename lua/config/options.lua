-- Make nvim appear fullscreen in kitty
vim.api.nvim_create_autocmd({ "UIEnter", "ColorScheme" }, {
  callback = function()
    local normal = vim.api.nvim_get_hl(0, { name = "Normal" })
    if not normal or not normal.bg then
      return
    end
    io.write(string.format("\027]11;#%06x\027\\", normal.bg))
  end,
})

vim.api.nvim_create_autocmd("VimLeave", {
  callback = function()
    io.write("\027]111\027\\")
  end,
})

-- relative numbers
vim.opt.number = true
vim.wo.relativenumber = true
