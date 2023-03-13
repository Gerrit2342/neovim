local ls = require("luasnip")
local s = ls.snippet
local sn = ls.snippet_node
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node
local d = ls.dynamic_node
local fmt = require("luasnip.extras.fmt").fmt
local fmta = require("luasnip.extras.fmt").fmta
local rep = require("luasnip.extras").rep

return {
-- Examples of complete snippets using fmt and fmta

s({trig="mfg", snippetType="autosnippet"},
  fmta(
	[[
	Mit freundlichen Grüßen
	Gerrit Albert
	]],{}
      )
),

s({trig="vg", snippetType="autosnippet"},
  fmta(
	[[
	Viele Grüße
	Gerrit Albert
	]],{}
      )
),

s({trig="lg", snippetType="autosnippet"},
  fmta(
	[[
	Liebe Grüße
	Gerrit
	]],{}
      )
)

}
