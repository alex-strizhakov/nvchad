require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

-- map("n", ";", ":", { desc = "CMD enter command mode" })
-- map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
map("n", "s", "<Plug>(leap-forward)", { desc = "Leap forward", silent = true })
map("n", "S", "<Plug>(leap-backward)", { desc = "Leap backward", silent = true })
map("n", "<leader>gg", ":LazyGit<CR>", { desc = "LazyGit" })
-- map("n", "gx", "<esc><cmd>URLOpenUnderCursor<CR>")
map(
  "n",
  "<leader>fl",
  ':let @*=fnamemodify(expand("%"), ":~:.") . ":" . line(".")<CR>',
  { desc = "copy relative file path with line number" }
)
map("n", "<leader>fp", ':let @*=fnamemodify(expand("%"), ":~:.")<CR>', { desc = "copy relative file path" })

map("n", "<leader>fe", "<cmd> Telescope resume <CR>", { desc = "Telescope resume" })
map("n", "<leader>ie", ":e .iex.exs<CR>", { desc = "Edit iex file" })
-- map("i", "jk", "<ESC>")

-- LSP
-- map("n", "gd", vim.lsp.buf.definition, { desc = "Lsp Go to definition" })
-- map("n", "gD", vim.lsp.buf.declaration, { desc = "LSP declaration" })
-- map("n", "K", vim.lsp.buf.hover, { desc = "LSP hover information" })
-- map("n", "gi", vim.lsp.buf.implementation, { desc = "LSP Go to implementation" })
-- map("n", "<leader>sh", vim.lsp.buf.signature_help, { desc = "LSP Show signature help" })
-- map("n", "<leader>wa", vim.lsp.buf.add_workspace_folder, { desc = "LSP Add workspace folder" })
-- map("n", "<leader>wr", vim.lsp.buf.remove_workspace_folder, { desc = "LSP Remove workspace folder" })
--
-- map("n", "<leader>wl", function()
--   print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
-- end, { desc = "LSP List workspace folders" })
--
-- map("n", "<leader>D", vim.lsp.buf.type_definition, { desc = "LSP Go to type definition" })
--
-- map("n", "<leader>ra", function()
--   require "nvchad.lsp.renamer"()
-- end, { desc = "LSP NvRenamer" })
--
-- map({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, { desc = "LSP Code action" })
-- map("n", "gr", vim.lsp.buf.references, { desc = "LSP Show references" })



-- map("n", "gd", vim.lsp.buf.definition, { desc = "LSP definition" })
-- map("n", "K", vim.lsp.buf.hover, { desc = "LSP hover" })
-- map("n", "gi", vim.lsp.buf.implementation, {desc = "LSP implementation"})
-- map("n", "<leader>D", vim.lsp.buf.type_definition, {desc = "LSP definition type"})
-- map("n", "", {desc = ""})
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

-- local nomap = vim.keymap.del
-- nomap("i", "jk")
-- nomap("i", "<C-h>")
-- nomap("i", "<C-l>")
-- nomap("i", "<C-j>")
-- nomap("i", "<C-k>")
