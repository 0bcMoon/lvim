--
-- Discord: https://discord.com/invite/Xb9B4Ny

-- vim.list_extend(lvim.lsp.automatic_configuration.skipped_servers, { "jdtls" })

-- require('java').setup()
-- require('jdtls').setup_dap()
-- require('jdtls').setup({
-- 	-- on_attach = on_attach,		
require("cMoon.mypul")
require("cMoon.autocmd")
require("cMoon.keymap")
require("cMoon.param")
require("cMoon.user_cmd")
require("cMoon.copilot")
require("cMoon.ensure")
require("cMoon.usercmd")
require("cMoon.snippets")
--
require('competitest').setup {

}
require('competitest').setup {
	testcases_directory = "./tests",
	received_problems_path = function(task, file_extension)
		local hyphen = string.find(task.group, " - ")
		local judge, contest
		if not hyphen then
			judge = task.group
			contest = "random"
		else
			judge = string.sub(task.group, 1, hyphen - 1)
			contest = string.sub(task.group, hyphen + 3)
		end
		contest = string.gsub(contest, " ", '_')
		local problem_name = string.gsub(task.name, " ", '_')
		judge = string.gsub(judge, " ", '_')
		return string.format("%s/CP/%s/%s/%s.%s", vim.loop.os_homedir(), judge, contest, problem_name,
			file_extension)
	end,
    runner_ui = {
        interface = "split",  -- Use split interface
        split_ui = {
            position = "right",  -- Position of the split window ("top", "bottom", "left", "right")
            relative_to_editor = true,  -- Adjust position relative to the entire editor
            total_width = 0.3,  -- Width of the split window (0 to 1)
            vertical_layout = {
                { 1, "tc" },
                { 1, { { 1, "so" }, { 1, "eo" } } },
                { 1, { { 1, "si" }, { 1, "se" } } },
            },
            total_height = 0.4,  -- Height of the split window (0 to 1)
            horizontal_layout = {
                { 2, "tc" },
                { 3, { { 1, "so" }, { 1, "si" } } },
                { 3, { { 1, "eo" }, { 1, "se" } } },
            },
        },
    },
	-- other configurations
}

-- require('lazy').setup({
    -- '~/path/to/your/plugin',  -- Specify the local path to the plugin
    -- config = function()
        -- require('your_plugin').setup()
    -- end
-- })
