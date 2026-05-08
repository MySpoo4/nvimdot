local on_attach = function(client, bufnr)
	vim.lsp.completion.enable(true, client.id, bufnr, {
		autotrigger = true,
	})

	-- vim.keymap.set("n", "gR", function()
	--   vim.lsp.buf.lsp_references()
	-- end, { buffer = bufnr, remap = false, desc = "View references" })
	--
	-- vim.keymap.set("n", "gd", function()
	--   vim.lsp.buf.definition()
	-- end, { buffer = bufnr, remap = false, desc = "Goto definition" })
	--
	-- vim.keymap.set("n", "gD", function()
	--   vim.lsp.buf.declaration()
	-- end, { buffer = bufnr, remap = false, desc = "Goto declaration" })
	--
	-- vim.keymap.set("n", "K", function()
	--   vim.lsp.buf.hover({
	--     max_width = math.floor(vim.api.nvim_win_get_width(0) * 0.8),
	--     max_height = math.floor(vim.api.nvim_win_get_height(0) * 0.5),
	--   })
	-- end, { buffer = bufnr, remap = false, desc = "View documentation" })
	--
	-- vim.keymap.set("n", "<leader>ca", function()
	--   vim.lsp.buf.code_action()
	-- end, { buffer = bufnr, remap = false, desc = "View code actions" })
	--
	-- vim.keymap.set("n", "ge", function()
	--   vim.diagnostic.jump({ count = 1 })
	-- end, { buffer = bufnr, remap = false, desc = "Goto next error" })
	--
	-- vim.keymap.set("n", "gE", function()
	--   vim.diagnostic.jump({ count = -1 })
	-- end, { buffer = bufnr, remap = false, desc = "Goto prev error" })
	--
	-- vim.keymap.set("n", "<leader>vd", function()
	--   vim.diagnostic.open_float({
	--     max_width = math.floor(vim.api.nvim_win_get_width(0) * 0.8),
	--     max_height = math.floor(vim.api.nvim_win_get_height(0) * 0.5),
	--   })
	-- end, { buffer = bufnr, remap = false, desc = "View diagnostics" })
	--
	-- vim.keymap.set("n", "<leader>vh", function()
	--   vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled())
	-- end, { buffer = bufnr, remap = false, desc = "Toggle inlay hints" })

	-- -- set keybinds
	-- opts.desc = "Show LSP references"
	-- keymap.set("n", "gR", "<cmd>Telescope lsp_references<CR>", opts) -- show definition, references
	--
	-- opts.desc = "Go to declaration"
	-- keymap.set("n", "gD", vim.lsp.buf.declaration, opts) -- go to declaration
	--
	-- opts.desc = "Show LSP definitions"
	-- keymap.set("n", "gd", "<cmd>Telescope lsp_definitions<CR>", opts) -- show lsp definitions
	--
	-- opts.desc = "Show LSP implementations"
	-- keymap.set("n", "gi", "<cmd>Telescope lsp_implementations<CR>", opts) -- show lsp implementations
	--
	-- opts.desc = "Show LSP type definitions"
	-- keymap.set("n", "gt", "<cmd>Telescope lsp_type_definitions<CR>", opts) -- show lsp type definitions
	--
	-- opts.desc = "See available code actions"
	-- keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, opts) -- see available code actions, in visual mode will apply to selection
	--
	-- opts.desc = "Smart rename"
	-- keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts) -- smart rename
	--
	-- opts.desc = "Show buffer diagnostics"
	-- keymap.set("n", "<leader>D", "<cmd>Telescope diagnostics bufnr=0<CR>", opts) -- show  diagnostics for file
	--
	-- opts.desc = "Show line diagnostics"
	-- keymap.set("n", "<leader>d", function()
	--   vim.diagnostic.open_float({
	--     border = "single",
	--     max_width = math.floor(vim.api.nvim_win_get_width(0) * 0.8),
	--     max_height = math.floor(vim.api.nvim_win_get_height(0) * 0.5),
	--   })
	-- end, opts) -- show diagnostics for line
	--
	-- opts.desc = "Go to previous diagnostic"
	-- keymap.set("n", "[d", function()
	--   vim.diagnostic.jump({ count = -1 })
	-- end, opts) -- jump to previous diagnostic in buffer
	--
	-- opts.desc = "Go to next diagnostic"
	-- keymap.set("n", "]d", function()
	--   vim.diagnostic.jump({ count = 1 })
	-- end, opts) -- jump to next diagnostic in buffer
	--
	-- opts.desc = "Show documentation for what is under cursor"
	-- keymap.set("n", "K", function()
	--   vim.lsp.buf.hover({
	--     border = "single",
	--     max_width = math.floor(vim.api.nvim_win_get_width(0) * 0.8),
	--     max_height = math.floor(vim.api.nvim_win_get_height(0) * 0.5),
	--   })
	-- end, opts) -- show documentation for what is under cursor
	--
	-- opts.desc = "Restart LSP"
	-- keymap.set("n", "<leader>rs", ":LspRestart<CR>", opts) -- mapping to restart lsp if necessary
end

vim.lsp.config("*", {
	on_attach = on_attach,
})

-- TODO maybe stick with default bindings

vim.lsp.enable({
	"lua_ls",
  "nil_ls",
  "rust_analyzer",
})
