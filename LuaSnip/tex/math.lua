local ls = require("luasnip")
local s = ls.snippet

return {
  -- A snippet that expands the trigger "hi" into the string "Hello, world!".
  s(
    { trig = "int" },
    { t("Integral definiert!") }
  ),

  -- To return multiple snippets, use one `return` statement per snippet file
  -- and return a table of Lua snippets.
  require("luasnip").snippet(
    { trig = "test" },
    { t("Ein Testsatz.") }
  ),
}
