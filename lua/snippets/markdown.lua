local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local fmta = require("luasnip.extras.fmt").fmta
local f = ls.function_node
local extras = require("luasnip.extras")
local rep = extras.rep
local function titles(_, snip)
	return string.rep("#", snip.captures[1])
end
local function date()
	return os.date("%Y-%m-%d")
end
local snippets = {
	s("tp", fmta([[
		---
		tags: ["<>"]
		date: <>
		author: Juan Camilo Guevara
		---
	]], { i(1), f(date) })),
	s('link', fmta([[
		[<>](./<>.md)
	]], { i(1), rep(1) })),
	-- Latex
	s("vec", fmta([[
		\vec{<>}
	]], { i(1) })),
	s("integral", fmta([[
		\int_{<>}^{<>} {<>} dx
	]], { i(1), i(2), i(3) })),
	s("sigma", fmta([[
		\sum_{<>}^{<>} {<>}
	]], { i(1), i(2), i(3) })),
	s("fraction", fmta([[
		\frac{<>}{<>}
	]], { i(1), i(2) })),
}
local autosnippets = {
	-- Latex
	s("^", fmta([[
		^{<>}
	]], { i(1) })),
	s("_", fmta([[
		_{<>}
	]], { i(1) })),
	s("ff", fmta([[
		$$ <> $$
	]], { i(1) })),
	-- Markdown
	s({ trig = "h(%d)", regTrig = true },
		f(titles, {})
	),
	s("\\today", fmta([[
		<>
	]], { f(date) })),
}
return snippets, autosnippets
