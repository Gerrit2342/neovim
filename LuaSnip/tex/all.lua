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

-- \texttt
s({trig="pp", dscr="'\\usepackage{} einfuegen'", snippetType="autosnippet"},
  fmta(
    "\\usepackage{<>}",
    { i(1) }
  )
),


s({trig="cc", dscr="\\cite{} einfuegen", snippetType="autosnippet"},
  fmta(
    "\\cite{<>}",
    { i(1) }
  )
),


s({trig="ll", dscr="'\\label{} einfuegen'", snippetType="autosnippet"},
  fmta(
    "\\label{<>}",
    { i(1) }
  )
),

s({trig="re", dscr="'\\ref{} einfuegen'", snippetType="autosnippet"},
  fmta(
    "\\ref{<>}",
    { i(1) }
  )
),

s({trig="to", dscr="'\\todo{} einfuegen'", snippetType="autosnippet"},
  fmta(
    "\\todo{<>}",
    { i(1) }
  )
),
s({trig="sec", dscr="'\\section{} einfuegen'", snippetType="autosnippet"},
  fmta(
    "\\section{<>}",
    { i(1) }
  )
),





s({trig="envddd", snippetType="autosnippet"},
  fmta(
    [[
      \begin{<>}
          <>
      \end{<>}
    ]],
    {
      i(1),
      i(2),
      rep(1),  -- this node repeats insert node i(1)
    }
  )
)
}
