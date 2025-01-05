local null_ls = require("null-ls")

null_ls.setup({
	sources = {
		null_ls.builtins.formatting.prettier, -- JavaScript, TypeScript, etc.
		null_ls.builtins.formatting.black, -- Python
		null_ls.builtins.formatting.stylua, -- Lua
		null_ls.builtins.formatting.clang_format, -- C/C++
		null_ls.builtins.formatting.rustfmt, -- Rust

		-- Add more formatters as needed
	},
})

vim.cmd([[
  augroup FormatAutogroup
    autocmd!
    autocmd BufWritePost *.lua,*.py,*.rs,*.c,*.cpp,*.h lua vim.lsp.buf.format({ async = false })
  augroup END
]])
