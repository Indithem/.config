require("key_bindings")
require("init_lazy")
require("plugin_setup")
require("snippets")

vim.cmd("colorscheme default")

-- restore last open place
vim.api.nvim_create_autocmd("BufReadPost", {
  pattern = "*",
  callback = function()
    local row, col = unpack(vim.api.nvim_buf_get_mark(0, '"'))
    if row > 0 and row <= vim.api.nvim_buf_line_count(0) then
      vim.api.nvim_win_set_cursor(0, { row, col })
    end
  end,
})


