-- Ensure Packer is installed
local fn = vim.fn
local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
end

-- Initialize Packer
require('packer').startup(function(use)
    require('myconfig.packer')(use)
end)



-- Autocommand to compile Packer whenever packer.lua is saved
vim.cmd [[autocmd BufWritePost lua/myconfig/packer.lua source <afile> | PackerCompile]]

-- Load additional configurations
require("myconfig")

