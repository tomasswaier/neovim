--vim.g.neoformat_enabled_html = { "js-beautify" }
vim.g.neoformat_run_all_formatters = 1

vim.cmd[[command! -nargs=0 W write]]
vim.cmd([[augroup fmt
    autocmd!
    autocmd BufWritePre * Neoformat
  augroup END
]])
vim.opt.foldmethod = "indent"
vim.opt.relativenumber=true
vim.opt.termguicolors=true
vim.opt.tabstop=2
vim.opt.shiftwidth=2
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
