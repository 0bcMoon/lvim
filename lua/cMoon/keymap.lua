
-- vim.keymap.set('n','<M-l>',"<Cmd>:vertical resize -2<CR>")
-- vim.keymap.set('n','<M-h>',"<Cmd>:vertical resize +2<CR>")
-- lvim.keys.normal_mode['<C-k>'] = "<Cmd>:m .-2<CR>=="
vim.cmd("nnoremap vv V")
vim.cmd("nnoremap <F2> @:")
vim.cmd("set showcmd")
vim.o.termguicolors = true
lvim.keys.normal_mode["<tab>"] = "<Cmd>bnext<CR>"
lvim.keys.normal_mode["<tab>"] = "<Cmd>bnext<CR>"
lvim.keys.normal_mode["<S-tab>"] = "<Cmd>bprevious<CR>"
lvim.keys.normal_mode['<leader>b'] = "<Cmd>w !norminette %<CR>"
lvim.keys.normal_mode["<C-b>"] = "<Cmd>NvimTreeToggle<CR>"
lvim.keys.normal_mode["<F3>"] = ":%s@<c-r><c-w>@<c-r><c-w>@gc<c-f>$F@i"
vim.keymap.set('n','mc',":CompetiTest run <CR>")

lvim.keys.normal_mode["<esc>"] = "<Cmd>:noh<CR>"
-- vim.keymap.set('t','<C-\\><C-N>',"<esc>")
vim.api.nvim_set_keymap(  't'  ,'<leader><ESC>'  ,  '<C-\\><C-N>'  ,  {noremap = true}  )
-- vim.opt.wrap = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.smartindent = true
vim.opt.expandtab = false
-- vim.keymap.set('v', '<leader>s', "\"fy/\\V<C-R>f<CR>" )
vim.opt.number = true
vim.opt.relativenumber = true
vim.cmd("nnoremap <leader>lz :lua require'jdtls'.organize_imports()<CR>")


vim.keymap.set('n', '<F5>', ":cprev<CR>")
vim.keymap.set('n', '<F6>', ":cnext<CR>")
vim.cmd("nnoremap <F4> :!c_formatter_42 %<CR>")



vim.keymap.set("n", "<PageUp>", ":cprev<CR>", { silent = true })
vim.keymap.set("n", "<PageDown>", ":cnext<CR>", { silent = true })

-- vim.keymap.set("n", "<C-M-v>", "<Cmd>lua require('jdtls').extract_variable()<CR>", { desc = "Extract variable Java" })
-- vim.keymap.set("n", "<C-M-c>", "<Cmd>lua require('jdtls').extract_constant()<CR>", { desc = "Extract constant Java" })
-- vim.keymap.set("n", "<C-M-o>", "<Cmd>lua require('jdtls').organize_imports()<CR>", { desc = "Organize imports Java" })
-- vim.keymap.set("n", "<C-M-m>", "<Cmd>lua require('jdtls').extract_method()<CR>", { desc = "Extract method Java" })
-- vim.keymap.set("n", "<F5>", "<Cmd>terminal mvn clean dependency:resolve<CR>", { desc = "Refresh maven dependencies" })
-- vim.keymap.set("n", "<F7>", "<Cmd>lua require('dapui').toggle({reset = true})<CR>", { desc = "Toggle DAP UI" })
-- vim.keymap.set("n", "<F8>", "<Cmd>lua require('dap').step_over()<CR>", { desc = "Debug step over" })
-- vim.keymap.set("n", "<F9>", "<Cmd>lua require('dap').continue()<CR>", { desc = "Debug continue" })
-- vim.keymap.set("n", "<F10>", "<Cmd>lua require('dap').disconnect()<CR>", { desc = "Debug stop" })
