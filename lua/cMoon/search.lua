
local telescop = require("telescope.builtin")

lvim.keys.normal_mode["<leader>sb"] = telescop.current_buffer_fuzzy_find
