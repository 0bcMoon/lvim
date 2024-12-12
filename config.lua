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
		contest = string.gsub(contest, ",", '_')
		local problem_name = string.gsub(task.name, " ", '_')
		problem_name = string.gsub(problem_name, ",", '_')
		judge = string.gsub(judge, " ", '_')
		return string.format("%s/CP/%s/%s/%s.%s", vim.loop.os_homedir(), judge, contest, problem_name,
			file_extension)
	end,
	floating_border = "rounded",
	floating_border_highlight = "FloatBorder",
	picker_ui = {
		width = 0.2,
		height = 0.3,
		mappings = {
			focus_next = { "j", "<down>", "<Tab>" },
			focus_prev = { "k", "<up>", "<S-Tab>" },
			close = { "<esc>", "<C-c>", "q", "Q" },
			submit = { "<cr>" },
		},
	},
	editor_ui = {
		popup_width = 0.4,
		popup_height = 0.6,
		show_nu = true,
		show_rnu = false,
		normal_mode_mappings = {
			switch_window = { "<C-h>", "<C-l>", "<C-i>" },
			save_and_close = "<C-s>",
			cancel = { "q", "Q" },
		},
		insert_mode_mappings = {
			switch_window = { "<C-h>", "<C-l>", "<C-i>" },
			save_and_close = "<C-s>",
			cancel = "<C-q>",
		},
	},
	runner_ui = {
		interface = "popup",
		selector_show_nu = false,
		selector_show_rnu = false,
		show_nu = true,
		show_rnu = false,
		mappings = {
			run_again = "R",
			run_all_again = "<C-r>",
			kill = "K",
			kill_all = "<C-k>",
			view_input = { "i", "I" },
			view_output = { "a", "A" },
			view_stdout = { "o", "O" },
			view_stderr = { "e", "E" },
			toggle_diff = { "d", "D" },
			close = { "q", "Q" },
		},
		viewer = {
			width = 0.5,
			height = 0.5,
			show_nu = true,
			show_rnu = false,
			close_mappings = { "q", "Q" },
		},
	},
	split_ui = {
		position = "right",
		relative_to_editor = true,
		total_width = 0.3,
		vertical_layout = {
			{ 1, "tc" },
			{ 1, { { 1, "so" }, { 1, "eo" } } },
			{ 1, { { 1, "si" }, { 1, "se" } } },
		},
		total_height = 0.4,
		horizontal_layout = {
			{ 2, "tc" },
			{ 3, { { 1, "so" }, { 1, "si" } } },
			{ 3, { { 1, "eo" }, { 1, "se" } } },
		},
	},
	-- other configurations
})
