local ls = require "luasnip"
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local extras = require("luasnip.extras")
local rep = extras.rep
local fmt = require("luasnip.extras.fmt").fmt
local c = ls.choice_node
local f = ls.function_node
local d = ls.dynamic_node
local sn = ls.snippet_node


ls.add_snippets("cpp", {
	s("class", {
		t("class"),
		i(1),
		t("{"),
		t("\tpublic:"),
		t("\t\t"),
		i(1),
		t("();"),
		t("}"),
	}),

})

