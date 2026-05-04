-- Chang'an Night 长安夜 — Neovim colorscheme
-- See ../../palette.md for the canonical palette and design rationale.

vim.cmd("highlight clear")
if vim.fn.exists("syntax_on") == 1 then
  vim.cmd("syntax reset")
end

vim.o.background = "dark"
vim.g.colors_name = "changan-night"

local p = {
  bg          = "#1a1d2e",
  bg_deep     = "#0d0e1a",
  bg_elev     = "#22253a",
  bg_alt      = "#15172a",
  selection   = "#3a4060",
  sel_dim     = "#262a3f",
  fg          = "#e8e4d4",
  silk        = "#bdb59d",
  comment     = "#5a5d70",
  smoke       = "#3a3d4e",
  cinnabar    = "#c93f3f",
  vermilion   = "#e85a4a",
  duckling    = "#d4a23f",
  apricot     = "#f4c860",
  jade        = "#5a8c4a",
  jade_dark   = "#4a8c8c",
  tender      = "#7dc26d",
  ink_blue    = "#5a7aa8",
  moon_blue   = "#7a9ad4",
  crimson     = "#a04a64",
  peach       = "#d48a9e",
  jade_bright = "#7ac0c0",
  white_silk  = "#f5efde",
}

local function hl(group, opts) vim.api.nvim_set_hl(0, group, opts) end

-- editor UI
hl("Normal",          { fg = p.fg, bg = p.bg })
hl("NormalNC",        { fg = p.fg, bg = p.bg })
hl("NormalFloat",     { fg = p.fg, bg = p.bg_elev })
hl("FloatBorder",     { fg = p.smoke, bg = p.bg_elev })
hl("FloatTitle",      { fg = p.apricot, bg = p.bg_elev, bold = true })
hl("ColorColumn",     { bg = p.bg_alt })
hl("Cursor",          { fg = p.bg, bg = p.apricot })
hl("CursorLine",      { bg = p.bg_elev })
hl("CursorColumn",    { bg = p.bg_elev })
hl("CursorLineNr",    { fg = p.apricot, bold = true })
hl("LineNr",          { fg = p.smoke })
hl("SignColumn",      { bg = p.bg })
hl("VertSplit",       { fg = p.sel_dim })
hl("WinSeparator",    { fg = p.sel_dim })
hl("Folded",          { fg = p.silk, bg = p.bg_elev })
hl("FoldColumn",      { fg = p.smoke, bg = p.bg })
hl("Visual",          { bg = p.selection })
hl("VisualNOS",       { bg = p.selection })
hl("Search",          { fg = p.bg, bg = p.duckling })
hl("IncSearch",       { fg = p.bg, bg = p.apricot })
hl("CurSearch",       { fg = p.bg, bg = p.apricot })
hl("MatchParen",      { fg = p.apricot, bold = true, underline = true })
hl("NonText",         { fg = p.smoke })
hl("SpecialKey",      { fg = p.smoke })
hl("Whitespace",      { fg = p.smoke })
hl("EndOfBuffer",     { fg = p.bg })
hl("Conceal",         { fg = p.silk })
hl("Directory",       { fg = p.moon_blue })
hl("Title",           { fg = p.apricot, bold = true })

-- statusline / tabline / winbar
hl("StatusLine",      { fg = p.silk, bg = p.bg_alt })
hl("StatusLineNC",    { fg = p.smoke, bg = p.bg_alt })
hl("TabLine",         { fg = p.smoke, bg = p.bg_alt })
hl("TabLineFill",     { bg = p.bg_alt })
hl("TabLineSel",      { fg = p.apricot, bg = p.bg })
hl("WinBar",          { fg = p.silk, bg = p.bg })
hl("WinBarNC",        { fg = p.smoke, bg = p.bg })

-- popup menu
hl("Pmenu",           { fg = p.fg, bg = p.bg_elev })
hl("PmenuSel",        { fg = p.apricot, bg = p.selection, bold = true })
hl("PmenuSbar",       { bg = p.bg_elev })
hl("PmenuThumb",      { bg = p.smoke })
hl("PmenuKind",       { fg = p.jade_bright, bg = p.bg_elev })
hl("PmenuKindSel",    { fg = p.jade_bright, bg = p.selection, bold = true })
hl("PmenuExtra",      { fg = p.silk, bg = p.bg_elev })
hl("PmenuExtraSel",   { fg = p.silk, bg = p.selection, bold = true })

-- messages
hl("ErrorMsg",        { fg = p.vermilion })
hl("WarningMsg",      { fg = p.duckling })
hl("ModeMsg",         { fg = p.silk })
hl("MoreMsg",         { fg = p.tender })
hl("Question",        { fg = p.moon_blue })

-- diff
hl("DiffAdd",         { bg = "#1f2a1d" })
hl("DiffChange",      { bg = "#1d2435" })
hl("DiffDelete",      { bg = "#2a1d1d", fg = p.cinnabar })
hl("DiffText",        { bg = "#2d3858", bold = true })

-- syntax (legacy groups)
hl("Comment",         { fg = p.comment, italic = true })
hl("Constant",        { fg = p.jade_bright })
hl("String",          { fg = p.duckling })
hl("Character",       { fg = p.duckling })
hl("Number",          { fg = p.peach })
hl("Boolean",         { fg = p.crimson })
hl("Float",           { fg = p.peach })
hl("Identifier",      { fg = p.fg })
hl("Function",        { fg = p.moon_blue })
hl("Statement",       { fg = p.cinnabar })
hl("Conditional",     { fg = p.cinnabar })
hl("Repeat",          { fg = p.cinnabar })
hl("Label",           { fg = p.cinnabar })
hl("Operator",        { fg = p.vermilion })
hl("Keyword",         { fg = p.cinnabar })
hl("Exception",       { fg = p.cinnabar })
hl("PreProc",         { fg = p.crimson })
hl("Include",         { fg = p.cinnabar })
hl("Define",          { fg = p.cinnabar })
hl("Macro",           { fg = p.crimson })
hl("PreCondit",       { fg = p.crimson })
hl("Type",            { fg = p.jade_bright })
hl("StorageClass",    { fg = p.cinnabar })
hl("Structure",       { fg = p.jade_bright })
hl("Typedef",         { fg = p.jade_bright })
hl("Special",         { fg = p.apricot })
hl("SpecialChar",     { fg = p.apricot })
hl("Tag",             { fg = p.cinnabar })
hl("Delimiter",       { fg = p.silk })
hl("SpecialComment",  { fg = p.silk, italic = true })
hl("Underlined",      { fg = p.moon_blue, underline = true })
hl("Todo",            { fg = p.apricot, bg = p.bg_elev, bold = true })
hl("Error",           { fg = p.vermilion })

-- treesitter (modern @-prefixed groups)
hl("@comment",                    { link = "Comment" })
hl("@string",                     { link = "String" })
hl("@string.escape",              { fg = p.apricot })
hl("@string.regex",               { fg = p.vermilion })
hl("@string.regexp",              { fg = p.vermilion })
hl("@string.special",             { fg = p.apricot })
hl("@number",                     { link = "Number" })
hl("@boolean",                    { link = "Boolean" })
hl("@constant",                   { fg = p.jade_bright })
hl("@constant.builtin",           { fg = p.crimson })
hl("@variable",                   { fg = p.fg })
hl("@variable.builtin",           { fg = p.crimson, italic = true })
hl("@variable.parameter",         { fg = p.silk, italic = true })
hl("@variable.member",            { fg = p.peach })
hl("@property",                   { fg = p.peach })
hl("@field",                      { fg = p.peach })
hl("@function",                   { fg = p.moon_blue })
hl("@function.builtin",           { fg = p.moon_blue, italic = true })
hl("@function.call",              { fg = p.moon_blue })
hl("@function.method",            { fg = p.moon_blue })
hl("@function.method.call",       { fg = p.moon_blue })
hl("@method",                     { fg = p.moon_blue })
hl("@constructor",                { fg = p.moon_blue, bold = true })
hl("@keyword",                    { fg = p.cinnabar })
hl("@keyword.function",           { fg = p.cinnabar })
hl("@keyword.return",             { fg = p.cinnabar })
hl("@keyword.import",             { fg = p.cinnabar })
hl("@keyword.exception",          { fg = p.cinnabar })
hl("@keyword.operator",           { fg = p.vermilion })
hl("@operator",                   { fg = p.vermilion })
hl("@type",                       { fg = p.jade_bright })
hl("@type.builtin",               { fg = p.jade_bright, italic = true })
hl("@type.definition",            { fg = p.jade_bright, bold = true })
hl("@namespace",                  { fg = p.jade_bright })
hl("@module",                     { fg = p.jade_bright })
hl("@tag",                        { fg = p.cinnabar })
hl("@tag.attribute",              { fg = p.apricot })
hl("@tag.delimiter",              { fg = p.silk })
hl("@attribute",                  { fg = p.apricot })
hl("@punctuation",                { fg = p.silk })
hl("@punctuation.delimiter",      { fg = p.silk })
hl("@punctuation.bracket",        { fg = p.silk })
hl("@punctuation.special",        { fg = p.apricot })

-- markdown / markup
hl("@markup.heading",             { fg = p.apricot, bold = true })
hl("@markup.heading.1",           { fg = p.apricot, bold = true })
hl("@markup.heading.2",           { fg = p.apricot, bold = true })
hl("@markup.heading.3",           { fg = p.duckling, bold = true })
hl("@markup.strong",              { bold = true })
hl("@markup.italic",              { italic = true })
hl("@markup.link",                { fg = p.moon_blue, underline = true })
hl("@markup.link.url",            { fg = p.moon_blue, underline = true })
hl("@markup.link.label",          { fg = p.apricot })
hl("@markup.list",                { fg = p.cinnabar })
hl("@markup.quote",               { fg = p.silk, italic = true })
hl("@markup.raw",                 { fg = p.duckling })
hl("@markup.raw.block",           { fg = p.duckling })

-- LSP semantic tokens
hl("@lsp.type.namespace",         { link = "@namespace" })
hl("@lsp.type.type",              { link = "@type" })
hl("@lsp.type.class",             { link = "@type" })
hl("@lsp.type.enum",              { link = "@type" })
hl("@lsp.type.interface",         { link = "@type" })
hl("@lsp.type.struct",            { link = "@type" })
hl("@lsp.type.parameter",         { link = "@variable.parameter" })
hl("@lsp.type.variable",          { link = "@variable" })
hl("@lsp.type.property",          { link = "@property" })
hl("@lsp.type.function",          { link = "@function" })
hl("@lsp.type.method",            { link = "@method" })
hl("@lsp.type.macro",             { link = "Macro" })
hl("@lsp.type.decorator",         { fg = p.crimson })

-- Diagnostics
hl("DiagnosticError",             { fg = p.vermilion })
hl("DiagnosticWarn",              { fg = p.duckling })
hl("DiagnosticInfo",              { fg = p.moon_blue })
hl("DiagnosticHint",              { fg = p.jade_bright })
hl("DiagnosticOk",                { fg = p.tender })
hl("DiagnosticUnderlineError",    { sp = p.vermilion, undercurl = true })
hl("DiagnosticUnderlineWarn",     { sp = p.duckling, undercurl = true })
hl("DiagnosticUnderlineInfo",     { sp = p.moon_blue, undercurl = true })
hl("DiagnosticUnderlineHint",     { sp = p.jade_bright, undercurl = true })
hl("DiagnosticVirtualTextError",  { fg = p.vermilion, bg = p.bg })
hl("DiagnosticVirtualTextWarn",   { fg = p.duckling, bg = p.bg })
hl("DiagnosticVirtualTextInfo",   { fg = p.moon_blue, bg = p.bg })
hl("DiagnosticVirtualTextHint",   { fg = p.jade_bright, bg = p.bg })

-- gitsigns / diff signs
hl("GitSignsAdd",                 { fg = p.jade })
hl("GitSignsChange",              { fg = p.ink_blue })
hl("GitSignsDelete",              { fg = p.cinnabar })
hl("Added",                       { fg = p.tender })
hl("Changed",                     { fg = p.moon_blue })
hl("Removed",                     { fg = p.cinnabar })

-- spell
hl("SpellBad",                    { sp = p.vermilion, undercurl = true })
hl("SpellCap",                    { sp = p.duckling, undercurl = true })
hl("SpellLocal",                  { sp = p.moon_blue, undercurl = true })
hl("SpellRare",                   { sp = p.peach, undercurl = true })

-- terminal palette
vim.g.terminal_color_0  = p.bg_deep
vim.g.terminal_color_1  = p.cinnabar
vim.g.terminal_color_2  = p.jade
vim.g.terminal_color_3  = p.duckling
vim.g.terminal_color_4  = p.ink_blue
vim.g.terminal_color_5  = p.crimson
vim.g.terminal_color_6  = p.jade_dark
vim.g.terminal_color_7  = p.silk
vim.g.terminal_color_8  = p.smoke
vim.g.terminal_color_9  = p.vermilion
vim.g.terminal_color_10 = p.tender
vim.g.terminal_color_11 = p.apricot
vim.g.terminal_color_12 = p.moon_blue
vim.g.terminal_color_13 = p.peach
vim.g.terminal_color_14 = p.jade_bright
vim.g.terminal_color_15 = p.white_silk
