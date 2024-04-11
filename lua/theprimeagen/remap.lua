-- Open compiler
vim.api.nvim_set_keymap('i', 'jk', '<Esc>', { noremap = true, silent = true })
vim.keymap.set('t', 'jk', '<C-\\><C-n>')
vim.opt.shiftwidth=2
vim.opt.relativenumber=true
-- Redo last selected option
-- See `:help vim.diagnostic.*` for documentation on any of the below functions
vim.keymap.set('n', '<space>e', vim.diagnostic.open_float)
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next)
vim.keymap.set('n', '<space>q', vim.diagnostic.setloclist)

-- Use LspAttach autocommand to only map the following keys
-- after the language server attaches to the current buffer
vim.api.nvim_create_autocmd('LspAttach', {
  group = vim.api.nvim_create_augroup('UserLspConfig', {}),
  callback = function(ev)
    -- Enable completion triggered by <c-x><c-o>
    vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'


        -- Set buffer local indentation options
    vim.bo[ev.buf].tabstop = 2        -- Number of spaces that a <Tab> character in the file counts for
    vim.bo[ev.buf].shiftwidth = 2     -- Number of spaces to use for each step of (auto)indent
    vim.bo[ev.buf].softtabstop = 2    -- Number of spaces to use in insert mode for a <Tab> key
    vim.bo[ev.buf].expandtab = true   -- Use spaces instead of tabs

    -- Buffer local mappings.
    -- See `:help vim.lsp.*` for documentation on any of the below functions
    local opts = { buffer = ev.buf }

    vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
    vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
    vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, opts)
    vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, opts)
    vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, opts)
    vim.keymap.set('n', '<space>wl', function()
      print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
    end, opts)
    vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, opts)
    vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, opts)
    vim.keymap.set({ 'n', 'v' }, '<space>ca', vim.lsp.buf.code_action, opts)
    vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
    vim.keymap.set('n', '<space>f', function()
      vim.lsp.buf.format { async = true }
    end, opts)
  end,
})
-- AND IF YOUR RIGHT HAND CAUSES YOU TO SIN , CUT IT OFF AND THROW IT AWAY.
vim.api.nvim_set_keymap('n', '<Left>',  ':echoe "you so dum!"<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Right>', ':echoe "you ugly"<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Up>',    ':echoe "stinky!!!"<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Down>',  ':echoe "pisslow"<CR>', { noremap = true, silent = true })

-- IT IS BETTER FOR YOU TO LOSE ONE PART OF YOUR BODY THAN FOR WHOLE BODY TO DEPART INTO HELL. 
vim.api.nvim_set_keymap('i', '<Left>',  '<Esc>:echoe "KYS"<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<Right>', '<Esc>:echoe "KYS"<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<Up>',    '<Esc>:echoe "KYS"<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<Down>',  '<Esc>:echoe "KYS"<CR>', { noremap = true, silent = true })
-- MATTHER 5:30 (some guy on reddit)
