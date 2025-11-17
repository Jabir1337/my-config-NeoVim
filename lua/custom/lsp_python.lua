-- ~/.config/nvim/lua/custom/lsp_python.lua

-- تأكد أن vim.lsp موجود
if not vim.lsp then return end

local cmd = { "/home/jgaadi/.local/bin/pylsp" }

local function on_attach(client, bufnr)
    local opts = { noremap = true, silent = true, buffer = bufnr }
    vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
    vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
end

vim.lsp.start({
    name = "pylsp",
    cmd = cmd,
    root_dir = vim.fs.dirname(vim.api.nvim_buf_get_name(0)),
    on_attach = on_attach,
    settings = {
        pylsp = {
            plugins = {
                pycodestyle = { enabled = true },
                pylint = { enabled = true },
                mccabe = { enabled = true },
                rope_autoimport = { enabled = true },
            }
        }
    }
})

