require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

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

map("n", "<leader>U", "viwU", { desc = "Upcase word" })
map("n", "<leader>L", "viwu", { desc = "Downcase word" })

local nomap = vim.keymap.del
nomap("n", "<leader>h")
