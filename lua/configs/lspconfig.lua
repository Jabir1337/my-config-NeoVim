require("nvchad.configs.lspconfig").defaults()

local servers = { "html", "cssls", "clangd" }
vim.lsp.enable(servers)

-- Python LSP with diagnostics configuration
vim.lsp.config.pylsp = {
  cmd = { "/home/jgaadi/.local/bin/pylsp" },
  filetypes = { "python" },
  root_markers = { "pyproject.toml", "setup.py", "setup.cfg", "requirements.txt", ".git" },
  settings = {
    pylsp = {
      plugins = {
        pycodestyle = { enabled = true },
        pyflakes = { enabled = true },
        pylint = { enabled = false },
        mccabe = { enabled = true },
      }
    }
  }
}
vim.lsp.enable("pylsp")

-- read :h vim.lsp.config for changing options of lsp servers
