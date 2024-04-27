vim.opt.foldmethod = "indent"
vim.opt.shiftwidth=2
vim.opt.relativenumber=true
vim.opt.termguicolors=true
vim.api.nvim_create_autocmd("FileType", { pattern = "TelescopeResults", command = [[setlocal nofoldenable]] })

