vim.cmd[[command! -nargs=0 W write]]
vim.opt.foldmethod = "indent"
vim.opt.shiftwidth=2
vim.opt.relativenumber=true
vim.opt.termguicolors=true
vim.api.nvim_create_autocmd("FileType", { pattern = "TelescopeResults", command = [[setlocal nofoldenable]] })
require('telescope').setup{
    defaults = {
        file_ignore_patterns = { "%.class" }, -- Ignore files with .class extension
    },
  pickers = {
    find_files = {
      theme = "ivy",
    }
  },
}
