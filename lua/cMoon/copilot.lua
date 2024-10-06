
local ok, copilot = pcall(require, "copilot")
if not ok then
  return
end

copilot.setup {
  suggestion = {
    keymap = {
      accept = "<c-l>",
      next = "<c-j>",
      prev = "<c-k>",
      dismiss = "<c-h>",
    },
  },
}

vim.api.nvim_set_keymap("i", "<M-l>", 'copilot#Accept("<CR>")', { silent = true, expr = true })
lvim.builtin.which_key.mappings["A"] = {
    name = "Copilot",
    mode = { "n", "v" },
    p = { "<cmd>Copilot panel<CR>", "Open Copilot Panel", mode = { "n", "v" } },
}
vim.g.copilot_suppress_warn = 0
-- Disable Copilot's separate suggestion window
vim.g.copilot_no_tab_map = true

-- Enable inline suggestions
vim.g.copilot_assume_mapped = false

-- Map a key to accept the current suggestion

-- Optional: Disable Copilot for specific filetypes

