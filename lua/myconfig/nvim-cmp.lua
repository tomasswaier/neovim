local nvim_lsp = require('lspconfig')
local capabilities = require('cmp_nvim_lsp').default_capabilities()

capabilities.textDocument.inlayHint = {
  dynamicRegistration = false,
  resolveSupport = {
    properties = {}
  }
}


nvim_lsp.html.setup {
  capabilities = capabilities,
  on_attach = function(client, bufnr)
    print("HTML LSP attached")
  end,
}

local cmp = require'cmp'

cmp.setup({
  snippet = {
    expand = function(args)
      vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
    end,
  },
  mapping = {
    ['<Tab>'] = cmp.mapping.select_next_item(),
    ['<S-Tab>'] = cmp.mapping.select_prev_item(),

    ['<C-b>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.abort(),
    ['<CR>'] = cmp.mapping.confirm({ select = true }),
  },
  sources = cmp.config.sources({
    { name = 'nvim_lsp' },
    { name = 'vsnip' },
  }, {
    { name = 'buffer' },
  })
})

cmp.setup.filetype('gitcommit', {
  sources = cmp.config.sources({
    { name = 'git' },
  }, {
    { name = 'buffer' },
  })
})

cmp.setup.cmdline({ '/', '?' }, {
  mapping = cmp.mapping.preset.cmdline(),
  sources = {
    { name = 'buffer' }
  }
})

cmp.setup.cmdline(':', {
  mapping = cmp.mapping.preset.cmdline(),
  sources = cmp.config.sources({
    { name = 'path' }
  }, {
    { name = 'cmdline' }
  }),
  matching = { disallow_symbol_nonprefix_matching = false }
})

-- Set up lspconfig.
require('lspconfig')['clangd'].setup {
  capabilities = capabilities
}
require('lspconfig')['vue_ls'].setup {
  capabilities = capabilities
}
require('lspconfig')['ts_ls'].setup {
  capabilities = capabilities
}
capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

require('lspconfig')['cssls'].setup {
  capabilities = capabilities

}
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

nvim_lsp.html.setup {
  capabilities = capabilities,
  cmd = { "vscode-html-language-server", "--stdio" },
  filetypes = { "html", "templ", "gohtml","vue" },
  init_options = {
    configurationSection = { "html", "css", "javascript","vue" },
    embeddedLanguages = {
      css = true,
      javascript = true
    },
    provideFormatter = false
  }
}
require('lspconfig')['tailwindcss'].setup{
  capabilities = capabilities
}
require('lspconfig')['gopls'].setup {
  capabilities = capabilities

}
require('lspconfig')['golangci_lint_ls'].setup {
  capabilities = capabilities

}
require('lspconfig')['robotframework_ls'].setup{
  --cmd = {
  --  "~/.local/share/nvim/lsp_servers/robotframework_ls/venv/bin/robotframework_ls"
  --},
  --filetypes = { "robot" },
  --root_dir = require('lspconfig').util.root_pattern(".git", "."),
  capabilities = capabilities
}

local util = require('lspconfig.util')

require('lspconfig').omnisharp.setup {
  capabilities = capabilities,
  root_dir = util.root_pattern('*.sln', '*.csproj', '.git'),
  cmd = {
    "omnisharp",
    "--languageserver",
    "--hostPID", tostring(vim.fn.getpid())
  },
  settings = {
    omnisharp = {
      enableRoslynAnalyzers = true,
      organizeImportsOnFormat = true,
      enableImportCompletion = true,
    }
  }
}


require'lspconfig'.asm_lsp.setup({
    cmd = { "asm-lsp" },
    filetypes = { "asm","s","S","nasm"},
    root_dir = function() return vim.fn.getcwd() end,
    settings = {
        ["asm-lsp"] = {
            enableHighlighting = true,
            hoverInfo = true,
            completion = true,
        }
    }
})

--[[
require('lspconfig')['pyright'].setup {
  capabilities = capabilities
}
]]--
require'lspconfig'.pylsp.setup{
  settings = {
    pylsp = {
      plugins = {
        pycodestyle = {
          ignore = {'W391'},
          maxLineLength = 100
        }
      }
    }
  }
}
--[[
require'lspconfig'.html.setup {
  capabilities = capabilities,
}
require'lspconfig'.cssls.setup {
  capabilities = capabilities,
}
]]--
--require'lspconfig'.eslint.setup{}
