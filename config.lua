--
-- Discord: https://discord.com/invite/Xb9B4Ny

require("cMoon.mypul")
require("cMoon.autocmd")
require("cMoon.keymap")
require("cMoon.param")
require("cMoon.user_cmd")
require("cMoon.copilot")
require("cMoon.ensure")
require("cMoon.usercmd")
require("cMoon.snippets")

require('competitest').setup({
	compile_command = {
		cpp = { exec = "c++", args = { "-Wall", "-std=c++17", "-Wextra", "-DDEBUG", "$(FNAME)", "-o", "$(FNOEXT)" } },
	},
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
	-- other configurations
})
