--
-- Built with,
--
--        ,gggg,
--       d8" "8I                         ,dPYb,
--       88  ,dP                         IP'`Yb
--    8888888P"                          I8  8I
--       88                              I8  8'
--       88        gg      gg    ,g,     I8 dPgg,
--  ,aa,_88        I8      8I   ,8'8,    I8dP" "8I
-- dP" "88P        I8,    ,8I  ,8'  Yb   I8P    I8
-- Yb,_,d88b,,_   ,d8b,  ,d8b,,8'_   8) ,d8     I8,
--  "Y8P"  "Y888888P'"Y88P"`Y8P' "YY8P8P88P     `Y8
--

-- This is a starter colorscheme for use with Lush,
-- for usage guides, see :h lush or :LushRunTutorial

--
-- Note: Because this is lua file, vim will append your file to the runtime,
--       which means you can require(...) it in other lua code (this is useful),
--       but you should also take care not to conflict with other libraries.
--
--       (This is a lua quirk, as it has somewhat poor support for namespacing.)
--
--       Basically, name your file,
--
--       "super_theme/lua/lush_theme/super_theme_dark.lua",
--
--       not,
--
--       "super_theme/lua/dark.lua".
--
--       With that caveat out of the way...
--

-- Enable lush.ify on this file, run:
--
--  `:Lushify`
--
--  or
--
--  `:lua require('lush').ify()`

local lush = require('lush')
local hsl = lush.hsl

--[[ Colors ]]--
local base03 = hsl('#002b36')
local base02 = hsl('#073642')
local base01 = hsl('#586e75')
local base00 = hsl('#657b83')
local base0 = hsl('#839496')
local base1 = hsl('#93a1a1')
local base2 = hsl('#eee8d5')
local base3 = hsl('#fdf6e3')
local yellow = hsl('#b58900')
local orange = hsl('#cb4b16')
local red = hsl('#dc322f')
local magenta = hsl('#d33682')
local violet = hsl('#6c71c4')
local blue = hsl('#268bd2')
local cyan = hsl('#2aa198')
local green = hsl('#859900')

local fg = base00


-- LSP/Linters mistakenly show `undefined global` errors in the spec, they may
-- support an annotation like the following. Consult your server documentation.
---@diagnostic disable: undefined-global
local theme = lush(function()
  return {
    -- The following are all the Neovim default highlight groups from the docs
    -- as of 0.5.0-nightly-446, to aid your theme creation. Your themes should
    -- probably style all of these at a bare minimum.
    --
    -- Referenced/linked groups must come before being referenced/lined,
    -- so the order shown ((mostly) alphabetical) is likely
    -- not the order you will end up with.
    --
    -- You can uncomment these and leave them empty to disable any
    -- styling for that group (meaning they mostly get styled as Normal)
    -- or leave them commented to apply vims default colouring or linking.

    Comment  { fg = base01, gui = 'italic', cterm = 'italic' }                       , -- any comment
    ColorColumn  { bg = base02 }                                                     , -- used for the columns set with 'colorcolumn'
    Conceal  { fg = blue }                                                           , -- placeholder characters substituted for concealed text (see 'conceallevel')
    Cursor  { fg = base3, bg = blue }                                                , -- character under the cursor
    -- lCursor  { }                                                                  , -- the character under the cursor when |language-mapping| is used (see 'guicursor')
    CursorIM  { bg = fg }                                                            , -- like Cursor, but used when in IME mode |CursorIM|
    CursorColumn  { bg = base02 }                                                    , -- Screen-column at the cursor, when 'cursorcolumn' is set.
    CursorLine  { bg = base02 }                                                      , -- Screen-line at the cursor, when 'cursorline' is set.  Low-priority if foreground (ctermfg OR guifg) is not set.
    Directory  { fg = blue }                                                         , -- directory names (and other special names in listings)
    DiffAdd  { fg = green, bg = base02, sp = green }                                 , -- diff mode: Added line |diff.txt|
    DiffChange  { bg = base02, sp = yellow }                                         , -- diff mode: Changed line |diff.txt|
    DiffDelete  { fg = red, bg = base02, gui = 'bold', cterm = 'bold' }              , -- diff mode: Deleted line |diff.txt|
    DiffText  { fg = blue, bg = base02, sp = blue }                                  , -- diff mode: Changed text within a changed line |diff.txt|
    -- EndOfBuffer  { }                                                              , -- filler lines (~) after the end of the buffer.  By default, this is highlighted like |hl-NonText|.
    -- TermCursor  { }                                                               , -- cursor in a focused terminal
    TermCursorNC  { fg = base03, bg = base01 }                                       , -- cursor in an unfocused terminal
    ErrorMsg  { fg = red, bg = base3, gui = 'reverse', cterm = 'reverse' }           , -- error messages on the command line
    VertSplit  { fg = base02, bg = base01 }                                          , -- the column separating vertically split windows
    Folded  { fg = base0, bg = base02, sp = base03, gui = 'bold', cterm = 'bold' }   , -- line used for closed folds
    FoldColumn  { fg = base0, bg = base02 }                                          , -- 'foldcolumn'
    SignColumn  { fg = base0 }                                                       , -- column where |signs| are displayed
    IncSearch  { fg = orange, gui = 'standout', cterm = 'standout' }                 , -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
    -- Substitute  { }                                                               , -- |:substitute| replacement text highlighting
    LineNr  { fg = base00, bg = base02 }                                             , -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
    CursorLineNr  { fg = base0, bg = base02, gui = 'bold', cterm = 'bold' }          , -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
    MatchParen  { fg = base3, bg = base02, gui = 'bold', cterm = 'bold' }            , -- The character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
    ModeMsg  { fg = blue }                                                           , -- 'showmode' message (e.g., "-- INSERT -- ")
    -- MsgArea  { }                                                                  , -- Area for messages and cmdline
    -- MsgSeparator  { }                                                             , -- Separator for scrolled messages, `msgsep` flag of 'display'
    MoreMsg  { fg = blue }                                                           , -- |more-prompt|
    NonText  { fg = base00, gui = 'bold', cterm = 'bold' }                           , -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
    Normal  { fg = base1 }                                                           , -- normal text
    -- NormalFloat  { }                                                              , -- Normal text in floating windows.
    -- NormalNC  { }                                                                 , -- normal text in non-current windows
    Pmenu  { fg = base1, bg = base02 }                                               , -- Popup menu: normal item.
    PmenuSel  { fg = base2, bg = base00 }                                            , -- Popup menu: selected item.
    PmenuSbar  { bg = base01 }                                                       , -- Popup menu: scrollbar.
    PmenuThumb  { bg = base0 }                                                       , -- Popup menu: Thumb of the scrollbar.
    Question  { fg = cyan, gui = 'bold', cterm = 'bold' }                            , -- |hit-enter| prompt and yes/no questions
    -- QuickFixLine  { }                                                             , -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
    Search  { fg = yellow, gui = 'reverse', cterm = 'reverse' }                      , -- Last search pattern highlighting (see 'hlsearch').  Also used for similar items that need to stand out.
    SpecialKey  { fg = base00, bg = base02, gui = 'bold', cterm = 'bold' }           , -- Unprintable characters: text displayed differently from what it really is.  But not 'listchars' whitespace. |hl-Whitespace|
    SpellBad  { fg = violet, sp = violet, gui = 'undercurl', cterm = 'underline' }   , -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
    SpellCap  { fg = violet, sp = violet, gui = 'undercurl', cterm = 'underline' }   , -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
    SpellLocal  { fg = yellow, sp = yellow, gui = 'undercurl', cterm = 'underline' } , -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
    SpellRare  { fg = cyan, sp = cyan, gui = 'undercurl', cterm = 'underline' }      , -- Word that is recognized by the spellchecker as one that is hardly ever used.  |spell| Combined with the highlighting used otherwise.
    StatusLine  { fg = base0, bg = base02, gui = 'reverse', cterm = 'reverse' }      , -- status line of current window
    StatusLineNC  { fg = base01, bg = base02, gui = 'reverse', cterm = 'reverse' }   , -- status lines of not-current windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
    TabLine  { fg = base01, bg = base02, gui = 'reverse', cterm = 'reverse' }        , -- tab pages line, not active tab page label
    TabLineFill  { fg = base01, bg = base02, gui = 'reverse', cterm = 'reverse' }    , -- tab pages line, where there are no labels
    TabLineSel  { fg = base0, bg = base02, gui = 'reverse', cterm = 'reverse' }      , -- tab pages line, active tab page label
    Title  { fg = orange, gui = 'bold', cterm = 'bold' }                             , -- titles for output from ":set all", ":autocmd" etc.
    Visual  { fg = base01, bg = base03, gui = 'reverse', cterm = 'reverse' }         , -- Visual mode selection
    VisualNOS  { bg = base02, gui = 'reverse', cterm = 'reverse' }                   , -- Visual mode selection when vim is "Not Owning the Selection".
    WarningMsg  { fg = orange, gui = 'bold', cterm = 'bold' }                        , -- warning messages
    -- Whitespace  { }                                                               , -- "nbsp", "space", "tab" and "trail" in 'listchars'
    WildMenu  { fg = base2, bg = base02, gui = 'reverse', cterm = 'reverse' }        , -- current match in 'wildmenu' completion
    Constant  { fg = cyan }                                                          , -- (preferred) any constant
    -- String  { }                                                                   , -- a string constant: "this is a string"
    -- Character  { }                                                                , -- a character constant: 'c', '\n'
    -- Number  { }                                                                   , -- a number constant: 234, 0xff
    -- Boolean  { }                                                                  , -- a boolean constant: TRUE, false
    -- Float  { }                                                                    , -- a floating point constant: 2.3e10
    Identifier  { fg = blue }                                                        , -- (preferred) any variable name
    -- Function  { }                                                                 , -- function name (also: methods for classes)
    Statement  { fg = green }                                                        , -- (preferred) any statement
    -- Conditional  { }                                                              , -- if, then, else, endif, switch, etc.
    -- Repeat  { }                                                                   , -- for, do, while, etc.
    -- Label  { }                                                                    , -- case, default, etc.
    -- Operator  { }                                                                 , -- "sizeof", "+", "*", etc.
    -- Keyword  { }                                                                  , -- any other keyword
    -- Exception  { }                                                                , -- try, catch, throw
    PreProc  { fg = orange }                                                         , -- (preferred) generic Preprocessor
    -- Include  { }                                                                  , -- preprocessor #include
    -- Define  { }                                                                   , -- preprocessor #define
    -- Macro  { }                                                                    , -- same as Define
    -- PreCondit  { }                                                                , -- preprocessor #if, #else, #endif, etc.
    Type  { fg = yellow }                                                            , -- (preferred) int, long, char, etc.
    -- StorageClass  { }                                                             , -- static, register, volatile, etc.
    -- Structure  { }                                                                , -- struct, union, enum, etc.
    -- Typedef  { }                                                                  , -- A typedef
    Special  { fg = orange }                                                         , -- (preferred) any special symbol
    -- SpecialChar  { }                                                              , -- special character in a constant
    -- Tag  { }                                                                      , -- you can use CTRL-] on this
    -- Delimiter  { }                                                                , -- character that needs attention
    -- SpecialComment  { }                                                           , -- special things inside a comment
    -- Debug  { }                                                                    , -- debugging statements
    Underlined  { fg = violet }                                                      , -- (preferred) text that stands out, HTML links
    -- Bold  { },
    -- Italic  { },
    -- Ignore  { }                                                                   , -- (preferred) left blank, hidden  |hl-Ignore|
    Error  { fg = red, bg = base3, gui = 'bold,reverse', cterm = 'bold,reverse' }    , -- (preferred) any erroneous construct
    Todo  { fg = magenta, gui = 'bold', cterm = 'bold' }                             , -- (preferred) anything that needs extra attention; mostly the keywords TODO FIXME and XXX
    -- LspReferenceText  { }                                                         , -- used for highlighting "text" references
    -- LspReferenceRead  { }                                                         , -- used for highlighting "read" references
    -- LspReferenceWrite  { }                                                        , -- used for highlighting "write" references
    -- LspDiagnosticsDefaultError  { }                                               , -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
    -- LspDiagnosticsDefaultWarning  { }                                             , -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
    -- LspDiagnosticsDefaultInformation  { }                                         , -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
    -- LspDiagnosticsDefaultHint  { }                                                , -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
    -- LspDiagnosticsVirtualTextError  { }                                           , -- Used for "Error" diagnostic virtual text
    -- LspDiagnosticsVirtualTextWarning  { }                                         , -- Used for "Warning" diagnostic virtual text
    -- LspDiagnosticsVirtualTextInformation  { }                                     , -- Used for "Information" diagnostic virtual text
    -- LspDiagnosticsVirtualTextHint  { }                                            , -- Used for "Hint" diagnostic virtual text
    -- LspDiagnosticsUnderlineError  { }                                             , -- Used to underline "Error" diagnostics
    -- LspDiagnosticsUnderlineWarning  { }                                           , -- Used to underline "Warning" diagnostics
    -- LspDiagnosticsUnderlineInformation  { }                                       , -- Used to underline "Information" diagnostics
    -- LspDiagnosticsUnderlineHint  { }                                              , -- Used to underline "Hint" diagnostics
    -- LspDiagnosticsFloatingError  { }                                              , -- Used to color "Error" diagnostic messages in diagnostics float
    -- LspDiagnosticsFloatingWarning  { }                                            , -- Used to color "Warning" diagnostic messages in diagnostics float
    -- LspDiagnosticsFloatingInformation  { }                                        , -- Used to color "Information" diagnostic messages in diagnostics float
    -- LspDiagnosticsFloatingHint  { }                                               , -- Used to color "Hint" diagnostic messages in diagnostics float
    -- LspDiagnosticsSignError  { }                                                  , -- Used for "Error" signs in sign column
    -- LspDiagnosticsSignWarning  { }                                                , -- Used for "Warning" signs in sign column
    -- LspDiagnosticsSignInformation  { }                                            , -- Used for "Information" signs in sign column
    -- LspDiagnosticsSignHint  { }                                                   , -- Used for "Hint" signs in sign column
    -- LspCodeLens  { }                                                              , -- Used to color the virtual text of the codelens
    -- TSAnnotation  { }                                                             , -- For C++/Dart attributes, annotations that can be attached to the code to denote some kind of meta information.
    -- TSAttribute  { }                                                              , -- (unstable) TODO: docs
    -- TSBoolean  { }                                                                , -- For booleans.
    -- TSCharacter  { }                                                              , -- For characters.
    -- TSComment  { }                                                                , -- For comment blocks.
    -- TSConstructor  { }` in Lua, and Java constructors.
    -- TSConditional  { }                                                            , -- For keywords related to conditionnals.
    -- TSConstant  { }                                                               , -- For constants
    TSConstBuiltin  { fg = orange }                                                  , -- For constant that are built in the language: `nil` in Lua.
    -- TSConstMacro  { }                                                             , -- For constants that are defined by macros: `NULL` in C.
    -- TSError  { }                                                                  , -- For syntax/parser errors.
    -- TSException  { }                                                              , -- For exception related keywords.
    TSField  { fg = magenta }                                                        , -- For fields.
    -- TSFloat  { }                                                                  , -- For floats.
    -- TSFunction  { }                                                               , -- For function (calls and definitions).
    -- TSFuncBuiltin  { }                                                            , -- For builtin functions: `table.insert` in Lua.
    -- TSFuncMacro  { }                                                              , -- For macro defined fuctions (calls and definitions): each `macro_rules` in Rust.
    -- TSInclude  { }                                                                , -- For includes: `#include` in C, `use` or `extern crate` in Rust, or `require` in Lua.
    -- TSKeyword  { }                                                                , -- For keywords that don't fall in previous categories.
    -- TSKeywordFunction  { }                                                        , -- For keywords used to define a fuction.
    -- TSLabel  { }                                                                  , -- For labels: `label:` in C and `:label:` in Lua.
    TSMethod  { fg = violet }                                                        , -- For method calls and definitions.
    -- TSNamespace  { }                                                              , -- For identifiers referring to modules and namespaces.
    -- TSNone  { }                                                                   , -- TODO: docs
    -- TSNumber  { }                                                                 , -- For all numbers
    -- TSOperator  { }                                                               , -- For any operator: `+`, but also `->` and `*` in C.
    TSParameter  { fg = Identifier.fg }                                              , -- For parameters of a function.
    -- TSParameterReference  { }                                                     , -- For references to parameters of a function.
    -- TSProperty  { }                                                               , -- Same as `TSField`.
    -- TSPunctDelimiter  { }                                                         , -- For delimiters ie: `.`
    -- TSPunctBracket  { }                                                           , -- For brackets and parens.
    -- TSPunctSpecial  { }                                                           , -- For special punctutation that does not fall in the catagories before.
    -- TSRepeat  { }                                                                 , -- For keywords related to loops.
    TSString  { fg = cyan, bg = base02, gui = 'bold' }                               , -- For strings.
    -- TSStringRegex  { }                                                            , -- For regexes.
    -- TSStringEscape  { }                                                           , -- For escape characters within a string.
    -- TSSymbol  { }                                                                 , -- For identifiers referring to symbols or atoms.
    -- TSType  { }                                                                   , -- For types.
    -- TSTypeBuiltin  { }                                                            , -- For builtin types.
    TSVariable  { fg = base1 }                                                       , -- Any variable name that does not have another highlight.
    -- TSVariableBuiltin  { }                                                        , -- Variable names that are defined by the languages, like `this` or `self`.
    -- TSTag  { }                                                                    , -- Tags like html tag names.
    -- TSTagDelimiter  { }                                                           , -- Tag delimiter like `<` `>` `/`
    -- TSText  { }                                                                   , -- For strings considered text in a markup language.
    -- TSEmphasis  { }                                                               , -- For text to be represented with emphasis.
    -- TSUnderline  { }                                                              , -- For text to be represented with an underline.
    -- TSStrike  { }                                                                 , -- For strikethrough text.
    -- TSTitle  { }                                                                  , -- Text that is part of a title.
    -- TSLiteral  { }                                                                , -- Literal text.
    -- TSURI  { }                                                                    , -- Any URI like a link or email.

  }
end)

-- return our parsed theme for extension or use else where.
return theme

-- vi:nowrap
