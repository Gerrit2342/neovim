"Abschnitt für vim-plug den Plugin-Manager 
call plug#begin()
"Hier folgen die zu ladenden Plugins

" follow latest release and install jsregexp.
Plug 'L3MON4D3/LuaSnip', {'do': 'make install_jsregexp'}
Plug 'lervag/vimtex'

call plug#end()

set number "Zeilennummer anzeigen
inoremap jk <Esc> 

let g:tex_flavor = "latex" "Texdateien nicht als Plaintex interpretieren

"Abschnitt für LuaSnip einen Snippet-Manager (LaTeX)
" Use Tab to expand and jump through snippets
imap <silent><expr> <Tab> luasnip#expand_or_jumpable() ? '<Plug>luasnip-expand-or-jump' : '<Tab>' 
smap <silent><expr> <Tab> luasnip#jumpable(1) ? '<Plug>luasnip-jump-next' : '<Tab>'

" Use Shift-Tab to jump backwards through snippets
imap <silent><expr> <S-Tab> luasnip#jumpable(-1) ? '<Plug>luasnip-jump-prev' : '<S-Tab>'
smap <silent><expr> <S-Tab> luasnip#jumpable(-1) ? '<Plug>luasnip-jump-prev' : '<S-Tab>'


"Angabe des Ordners für das Laden der .lua Dateien
lua require("luasnip.loaders.from_lua").lazy_load({paths = "~/AppData/Local/nvim/LuaSnip/"})
"Externe Konfigurationsdatei (lua) einbinden
luafile  ~/AppData/Local/nvim/LuaSnip/config.lua

filetype on
filetype plugin on
filetype indent on
