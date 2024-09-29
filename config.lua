--
-- Discord: https://discord.com/invite/Xb9B4Ny

-- vim.list_extend(lvim.lsp.automatic_configuration.skipped_servers, { "jdtls" })

-- require('java').setup()
				-- require('jdtls').setup_dap()
				-- require('jdtls').setup({
				-- 	-- on_attach = on_attach,		
require("conf.mypul")
require("conf.autocmd")
require("conf.keymap")
require("conf.param")
require("conf.user_cmd")
require("conf.copilot")
require("conf.ensure")
require("conf.usercmd")
require("conf.snippets")
--

vim.list_extend(lvim.lsp.automatic_configuration.skipped_servers, { "jdtls", "lemminx" })
lvim.format_on_save.enabled = false
-- vim.api.nvim_set_keymap(
--   'n', '<Leader>d', ':lua vim.diagnostic.open_float()<CR>',
--   { noremap = true, silent = true }
-- )
-- vim.diagnostic.config({
--   virtual_text = false, -- Turn off inline diagnostics
-- 
