-- autogenerated lush spec on Št 18. apríl 2024, 10:18:18
-- Run :Lushify
-- then /Normal to find the Normal group and edit your fg & bg colors
local lush = require("lush")
local hsl = lush.hsl
local hsluv = lush.hsluv
local theme = lush(function(injected_functions)
  local sym = injected_functions.sym
  return {
    SpecialKey                             { fg="#cccccf", }, -- SpecialKey     xxx guifg=Cyan
    TermCursor                             { gui="reverse", }, -- TermCursor     xxx cterm=reverse gui=reverse
    NonText                                { fg="#dddddd", gui="bold", }, -- NonText        xxx cterm=bold gui=bold guifg=#8356a0
    EndOfBuffer                            { NonText }, -- EndOfBuffer    xxx links to NonText
    Whitespace                             { NonText }, -- Whitespace     xxx links to NonText
    TelescopePromptCounter                 { NonText }, -- TelescopePromptCounter xxx links to NonText
    TelescopePreviewHyphen                 { NonText }, -- TelescopePreviewHyphen xxx links to NonText
    TelescopeResultsDiffUntracked          { NonText }, -- TelescopeResultsDiffUntracked xxx links to NonText
    ErrorMsg                               { fg="white", bg="grey", }, -- ErrorMsg       xxx guifg=White guibg=Red
    NvimInvalidSpacing                     { ErrorMsg }, -- NvimInvalidSpacing xxx links to ErrorMsg
    IncSearch                              { fg="#020203", bg="#605dac", }, -- IncSearch      xxx guifg=#020203 guibg=#605dac
    MoreMsg                                { fg="sea#ffffdd", gui="bold", }, -- MoreMsg        xxx cterm=bold gui=bold guifg=SeaGreen
    ModeMsg                                { gui="bold", }, -- ModeMsg        xxx cterm=bold gui=bold
    LineNr                                 { fg="#555555", gui="italic", }, -- LineNr         xxx cterm=italic gui=italic guifg=#6c2693
    LineNrAbove                            { LineNr }, -- LineNrAbove    xxx links to LineNr
    LineNrBelow                            { LineNr }, -- LineNrBelow    xxx links to LineNr
    TelescopeResultsLineNr                 { LineNr }, -- TelescopeResultsLineNr xxx links to LineNr
    CursorLineNr                           { fg="#56004e", gui="italic", }, -- CursorLineNr   xxx cterm=italic gui=italic guifg=#56004e
    Question                               { fg="#ffffdd", gui="bold", }, -- Question       xxx cterm=bold gui=bold guifg=Green
    netrwSymLink                           { Question }, -- netrwSymLink   xxx links to Question
    StatusLine                             { gui="bold,reverse", }, -- StatusLine     xxx cterm=bold,reverse gui=bold,reverse
    MsgSeparator                           { StatusLine }, -- MsgSeparator   xxx links to StatusLine
    StatusLineNC                           { gui="reverse", }, -- StatusLineNC   xxx cterm=reverse gui=reverse
    Title                                  { fg="#818181", gui="bold", }, -- Title          xxx cterm=bold gui=bold guifg=Magenta
    FloatTitle                             { Title }, -- FloatTitle     xxx links to Title
    sym"@text.title"                       { Title }, -- @text.title    xxx links to Title
    LspInfoTitle                           { Title }, -- LspInfoTitle   xxx links to Title
    Visual                                 { fg="#1a0016", bg="#730099", }, -- Visual         xxx guifg=#1a0016 guibg=#730099
    TelescopePreviewLine                   { Visual }, -- TelescopePreviewLine xxx links to Visual
    TelescopeSelection                     { Visual }, -- TelescopeSelection xxx links to Visual
    WarningMsg                             { fg="red", }, -- WarningMsg     xxx guifg=Red
    netrwCoreDump                          { WarningMsg }, -- netrwCoreDump  xxx links to WarningMsg
    WildMenu                               { fg="black", bg="#c959c1", }, -- WildMenu       xxx guifg=Black guibg=#c959c1
    Folded                                 { fg="#af50af", bg="#310038", }, -- Folded         xxx guifg=#af50af guibg=#310038
    netrwData                              { Folded }, -- netrwData      xxx links to Folded
    FoldColumn                             { fg="#cccccf", bg="grey", }, -- FoldColumn     xxx guifg=Cyan guibg=Grey
    CursorLineFold                         { FoldColumn }, -- CursorLineFold xxx links to FoldColumn
    DiffAdd                                { bg="darkblue", }, -- DiffAdd        xxx guibg=DarkBlue
    TelescopeResultsDiffAdd                { DiffAdd }, -- TelescopeResultsDiffAdd xxx links to DiffAdd
    DiffChange                             { bg="dark#818181", }, -- DiffChange     xxx guibg=DarkMagenta
    TelescopeResultsDiffChange             { DiffChange }, -- TelescopeResultsDiffChange xxx links to DiffChange
    netrwLib                               { DiffChange }, -- netrwLib       xxx links to DiffChange
    netrwMakefile                          { DiffChange }, -- netrwMakefile  xxx links to DiffChange
    DiffDelete                             { fg="blue", bg="dark#cccccf", gui="bold", }, -- DiffDelete     xxx cterm=bold gui=bold guifg=Blue guibg=DarkCyan
    TelescopeResultsDiffDelete             { DiffDelete }, -- TelescopeResultsDiffDelete xxx links to DiffDelete
    DiffText                               { bg="red", gui="bold", }, -- DiffText       xxx cterm=bold gui=bold guibg=Red
    SignColumn                             { fg="#cccccf", bg="grey", }, -- SignColumn     xxx guifg=Cyan guibg=Grey
    CursorLineSign                         { SignColumn }, -- CursorLineSign xxx links to SignColumn
    Conceal                                { fg="lightgrey", bg="darkgrey", }, -- Conceal        xxx guifg=LightGrey guibg=DarkGrey
    SpellBad                               { sp="red", gui="undercurl", }, -- SpellBad       xxx cterm=undercurl gui=undercurl guisp=Red
    SpellCap                               { sp="blue", gui="undercurl", }, -- SpellCap       xxx cterm=undercurl gui=undercurl guisp=Blue
    SpellRare                              { sp="#818181", gui="undercurl", }, -- SpellRare      xxx cterm=undercurl gui=undercurl guisp=Magenta
    SpellLocal                             { sp="#cccccf", gui="undercurl", }, -- SpellLocal     xxx cterm=undercurl gui=undercurl guisp=Cyan
    Pmenu                                  { bg="#818181", }, -- Pmenu          xxx guibg=Magenta
    PmenuKind                              { Pmenu }, -- PmenuKind      xxx links to Pmenu
    PmenuExtra                             { Pmenu }, -- PmenuExtra     xxx links to Pmenu
    NormalFloat                            { Pmenu }, -- NormalFloat    xxx links to Pmenu
    PmenuSel                               { bg="darkgrey", }, -- PmenuSel       xxx guibg=DarkGrey
    PmenuKindSel                           { PmenuSel }, -- PmenuKindSel   xxx links to PmenuSel
    PmenuExtraSel                          { PmenuSel }, -- PmenuExtraSel  xxx links to PmenuSel
    PmenuSbar                              { bg="grey", }, -- PmenuSbar      xxx guibg=Grey
    PmenuThumb                             { bg="white", }, -- PmenuThumb     xxx guibg=White
    TabLine                                { bg="darkgrey", gui="underline", }, -- TabLine        xxx cterm=underline gui=underline guibg=DarkGrey
    TabLineSel                             { gui="bold", }, -- TabLineSel     xxx cterm=bold gui=bold
    netrwMarkFile                          { TabLineSel }, -- netrwMarkFile  xxx links to TabLineSel
    TabLineFill                            { gui="reverse", }, -- TabLineFill    xxx cterm=reverse gui=reverse
    CursorLine                             { bg="#4d0042", }, -- CursorLine     xxx guibg=#4d0042
    CursorColumn                           { CursorLine }, -- CursorColumn   xxx links to CursorLine
    ColorColumn                            { bg="darkred", }, -- ColorColumn    xxx guibg=DarkRed
    WinBar                                 { gui="bold", }, -- WinBar         xxx cterm=bold gui=bold
    WinBarNC                               { WinBar }, -- WinBarNC       xxx links to WinBar
    Cursor                                 { fg="bg", bg="fg", }, -- Cursor         xxx guifg=bg guibg=fg
    lCursor                                { fg="bg", bg="fg", }, -- lCursor        xxx guifg=bg guibg=fg
    Normal                                 { fg="#bbbbbb", bg="#000000", }, -- Normal         xxx guifg=#730099 guibg=#210028
    VertSplit                              { Normal }, -- VertSplit      xxx links to Normal
    NvimSpacing                            { Normal }, -- NvimSpacing    xxx links to Normal
    TelescopeNormal                        { Normal }, -- TelescopeNormal xxx links to Normal
    FloatShadow                            { bg="black", blend=80, }, -- FloatShadow    xxx guibg=Black blend=80
    FloatShadowThrough                     { bg="black", blend=100, }, -- FloatShadowThrough xxx guibg=Black blend=100
    RedrawDebugNormal                      { gui="reverse", }, -- RedrawDebugNormal xxx cterm=reverse gui=reverse
    RedrawDebugClear                       { bg="yellow", }, -- RedrawDebugClear xxx guibg=Yellow
    RedrawDebugComposed                    { bg="#ffffdd", }, -- RedrawDebugComposed xxx guibg=Green
    RedrawDebugRecompose                   { bg="red", }, -- RedrawDebugRecompose xxx guibg=Red
    Error                                  { fg="white", bg="red", }, -- Error          xxx guifg=White guibg=Red
    NvimInvalid                            { Error }, -- NvimInvalid    xxx links to Error
    luaParenError                          { Error }, -- luaParenError  xxx links to Error
    luaError                               { Error }, -- luaError       xxx links to Error
    cBadContinuation                       { Error }, -- cBadContinuation xxx links to Error
    cError                                 { Error }, -- cError         xxx links to Error
    Todo                                   { fg="blue", bg="yellow", }, -- Todo           xxx guifg=Blue guibg=Yellow
    sym"@text.todo"                        { Todo }, -- @text.todo     xxx links to Todo
    luaTodo                                { Todo }, -- luaTodo        xxx links to Todo
    cTodo                                  { Todo }, -- cTodo          xxx links to Todo
    Constant                               { fg="#aaaaaa", }, -- Constant       xxx guifg=#af60a0
    String                                 { Constant }, -- String         xxx links to Constant
    Character                              { Constant }, -- Character      xxx links to Constant
    Number                                 { Constant }, -- Number         xxx links to Constant
    Boolean                                { Constant }, -- Boolean        xxx links to Constant
    sym"@constant"                         { Constant }, -- @constant      xxx links to Constant
    sym"@lsp.type.enumMember"              { Constant }, -- @lsp.type.enumMember xxx links to Constant
    TelescopePreviewPipe                   { Constant }, -- TelescopePreviewPipe xxx links to Constant
    TelescopePreviewCharDev                { Constant }, -- TelescopePreviewCharDev xxx links to Constant
    TelescopePreviewBlock                  { Constant }, -- TelescopePreviewBlock xxx links to Constant
    TelescopePreviewRead                   { Constant }, -- TelescopePreviewRead xxx links to Constant
    TelescopePreviewUser                   { Constant }, -- TelescopePreviewUser xxx links to Constant
    TelescopeResultsConstant               { Constant }, -- TelescopeResultsConstant xxx links to Constant
    TelescopePreviewGroup                  { Constant }, -- TelescopePreviewGroup xxx links to Constant
    luaConstant                            { Constant }, -- luaConstant    xxx links to Constant
    cConstant                              { Constant }, -- cConstant      xxx links to Constant
    Identifier                             { fg="#dddddd", }, -- Identifier     xxx guifg=#924c9d
    Function                               { Identifier }, -- Function       xxx links to Identifier
    sym"@text.reference"                   { Identifier }, -- @text.reference xxx links to Identifier
    sym"@parameter"                        { Identifier }, -- @parameter     xxx links to Identifier
    sym"@field"                            { Identifier }, -- @field         xxx links to Identifier
    sym"@property"                         { Identifier }, -- @property      xxx links to Identifier
    sym"@variable"                         { Identifier }, -- @variable      xxx links to Identifier
    sym"@namespace"                        { Identifier }, -- @namespace     xxx links to Identifier
    sym"@lsp.type.parameter"               { Identifier }, -- @lsp.type.parameter xxx links to Identifier
    sym"@lsp.type.property"                { Identifier }, -- @lsp.type.property xxx links to Identifier
    sym"@lsp.type.variable"                { Identifier }, -- @lsp.type.variable xxx links to Identifier
    NvimIdentifier                         { Identifier }, -- NvimIdentifier xxx links to Identifier
    TelescopePromptPrefix                  { Identifier }, -- TelescopePromptPrefix xxx links to Identifier
    TelescopeResultsIdentifier             { Identifier }, -- TelescopeResultsIdentifier xxx links to Identifier
    TelescopeMultiIcon                     { Identifier }, -- TelescopeMultiIcon xxx links to Identifier
    netrwVersion                           { Identifier }, -- netrwVersion   xxx links to Identifier
    luaFunc                                { Identifier }, -- luaFunc        xxx links to Identifier
    Statement                              { fg="#dddddd", gui="bold", }, -- Statement      xxx cterm=bold gui=bold guifg=#a361c3
    Conditional                            { Statement }, -- Conditional    xxx links to Statement
    Repeat                                 { Statement }, -- Repeat         xxx links to Statement
    Label                                  { Statement }, -- Label          xxx links to Statement
    Operator                               { Statement }, -- Operator       xxx links to Statement
    Keyword                                { Statement }, -- Keyword        xxx links to Statement
    Exception                              { Statement }, -- Exception      xxx links to Statement
    TelescopePreviewSocket                 { Statement }, -- TelescopePreviewSocket xxx links to Statement
    TelescopePreviewWrite                  { Statement }, -- TelescopePreviewWrite xxx links to Statement
    netrwHidePat                           { Statement }, -- netrwHidePat   xxx links to Statement
    netrwList                              { Statement }, -- netrwList      xxx links to Statement
    luaStatement                           { Statement }, -- luaStatement   xxx links to Statement
    cStatement                             { Statement }, -- cStatement     xxx links to Statement
    PreProc                                { fg="#777777", }, -- PreProc        xxx guifg=#ff80ff
    Include                                { PreProc }, -- Include        xxx links to PreProc
    Define                                 { PreProc }, -- Define         xxx links to PreProc
    Macro                                  { PreProc }, -- Macro          xxx links to PreProc
    PreCondit                              { PreProc }, -- PreCondit      xxx links to PreProc
    sym"@preproc"                          { PreProc }, -- @preproc       xxx links to PreProc
    netrwExe                               { PreProc }, -- netrwExe       xxx links to PreProc
    cOctalZero                             { PreProc }, -- cOctalZero     xxx links to PreProc
    cPreProc                               { PreProc }, -- cPreProc       xxx links to PreProc
    Type                                   { fg="#ffffff", gui="bold", }, -- Type           xxx cterm=bold gui=bold guifg=#600060
    StorageClass                           { Type }, -- StorageClass   xxx links to Type
    Structure                              { Type }, -- Structure      xxx links to Type
    Typedef                                { Type }, -- Typedef        xxx links to Type
    sym"@type"                             { Type }, -- @type          xxx links to Type
    sym"@lsp.type.type"                    { Type }, -- @lsp.type.type xxx links to Type
    NvimNumberPrefix                       { Type }, -- NvimNumberPrefix xxx links to Type
    NvimOptionSigil                        { Type }, -- NvimOptionSigil xxx links to Type
    LspInfoFiletype                        { Type }, -- LspInfoFiletype xxx links to Type
    TelescopeMultiSelection                { Type }, -- TelescopeMultiSelection xxx links to Type
    cType                                  { Type }, -- cType          xxx links to Type
    Special                                { fg="#999999", }, -- Special        xxx guifg=#cf0fa0
    Tag                                    { Special }, -- Tag            xxx links to Special
    SpecialChar                            { Special }, -- SpecialChar    xxx links to Special
    Delimiter                              { Special }, -- Delimiter      xxx links to Special
    SpecialComment                         { Special }, -- SpecialComment xxx links to Special
    Debug                                  { Special }, -- Debug          xxx links to Special
    sym"@constant.builtin"                 { Special }, -- @constant.builtin xxx links to Special
    sym"@function.builtin"                 { Special }, -- @function.builtin xxx links to Special
    sym"@constructor"                      { Special }, -- @constructor   xxx links to Special
    TelescopeMatching                      { Special }, -- TelescopeMatching xxx links to Special
    TelescopePreviewLink                   { Special }, -- TelescopePreviewLink xxx links to Special
    netrwLink                              { Special }, -- netrwLink      xxx links to Special
    netrwTreeBar                           { Special }, -- netrwTreeBar   xxx links to Special
    netrwPix                               { Special }, -- netrwPix       xxx links to Special
    DiagnosticError                        { fg="#ffffff", }, -- DiagnosticError xxx guifg=#ff0000
    DiagnosticVirtualTextError             { DiagnosticError }, -- DiagnosticVirtualTextError xxx links to DiagnosticError
    DiagnosticFloatingError                { DiagnosticError }, -- DiagnosticFloatingError xxx links to DiagnosticError
    DiagnosticSignError                    { DiagnosticError }, -- DiagnosticSignError xxx links to DiagnosticError
    DiagnosticWarn                         { fg="#ffffff", }, -- DiagnosticWarn xxx guifg=#af3030
    DiagnosticVirtualTextWarn              { DiagnosticWarn }, -- DiagnosticVirtualTextWarn xxx links to DiagnosticWarn
    DiagnosticFloatingWarn                 { DiagnosticWarn }, -- DiagnosticFloatingWarn xxx links to DiagnosticWarn
    DiagnosticSignWarn                     { DiagnosticWarn }, -- DiagnosticSignWarn xxx links to DiagnosticWarn
    DiagnosticInfo                         { fg="#ffffff", }, -- DiagnosticInfo xxx guifg=#cf6080
    DiagnosticVirtualTextInfo              { DiagnosticInfo }, -- DiagnosticVirtualTextInfo xxx links to DiagnosticInfo
    DiagnosticFloatingInfo                 { DiagnosticInfo }, -- DiagnosticFloatingInfo xxx links to DiagnosticInfo
    DiagnosticSignInfo                     { DiagnosticInfo }, -- DiagnosticSignInfo xxx links to DiagnosticInfo
    DiagnosticHint                         { fg="#ffffff", }, -- DiagnosticHint xxx guifg=#cf309f
    DiagnosticVirtualTextHint              { DiagnosticHint }, -- DiagnosticVirtualTextHint xxx links to DiagnosticHint
    DiagnosticFloatingHint                 { DiagnosticHint }, -- DiagnosticFloatingHint xxx links to DiagnosticHint
    DiagnosticSignHint                     { DiagnosticHint }, -- DiagnosticSignHint xxx links to DiagnosticHint
    DiagnosticOk                           { fg="#ffffff", }, -- DiagnosticOk   xxx guifg=#ff60af
    DiagnosticVirtualTextOk                { DiagnosticOk }, -- DiagnosticVirtualTextOk xxx links to DiagnosticOk
    DiagnosticFloatingOk                   { DiagnosticOk }, -- DiagnosticFloatingOk xxx links to DiagnosticOk
    DiagnosticSignOk                       { DiagnosticOk }, -- DiagnosticSignOk xxx links to DiagnosticOk
    DiagnosticUnderlineError               { sp="red", gui="underline", }, -- DiagnosticUnderlineError xxx cterm=underline gui=underline guisp=Red
    DiagnosticUnderlineWarn                { sp="orange", gui="underline", }, -- DiagnosticUnderlineWarn xxx cterm=underline gui=underline guisp=Orange
    DiagnosticUnderlineInfo                { sp="lightblue", gui="underline", }, -- DiagnosticUnderlineInfo xxx cterm=underline gui=underline guisp=LightBlue
    DiagnosticUnderlineHint                { sp="lightgrey", gui="underline", }, -- DiagnosticUnderlineHint xxx cterm=underline gui=underline guisp=LightGrey
    DiagnosticUnderlineOk                  { sp="light#ffffdd", gui="underline", }, -- DiagnosticUnderlineOk xxx cterm=underline gui=underline guisp=LightGreen
    DiagnosticDeprecated                   { sp="red", gui="strikethrough", }, -- DiagnosticDeprecated xxx cterm=strikethrough gui=strikethrough guisp=Red
    Comment                                { fg="#666666", }, -- Comment        xxx guifg=#4a2093
    DiagnosticUnnecessary                  { Comment }, -- DiagnosticUnnecessary xxx links to Comment
    sym"@text.literal"                     { Comment }, -- @text.literal  xxx links to Comment
    sym"@comment"                          { Comment }, -- @comment       xxx links to Comment
    sym"@lsp.type.comment"                 { Comment }, -- @lsp.type.comment xxx links to Comment
    LspInfoTip                             { Comment }, -- LspInfoTip     xxx links to Comment
    TelescopeResultsComment                { Comment }, -- TelescopeResultsComment xxx links to Comment
    netrwComment                           { Comment }, -- netrwComment   xxx links to Comment
    luaComment                             { Comment }, -- luaComment     xxx links to Comment
    cComment                               { Comment }, -- cComment       xxx links to Comment
    cCppOut                                { Comment }, -- cCppOut        xxx links to Comment
    Underlined                             { fg="#80a0ff", gui="underline", }, -- Underlined     xxx cterm=underline gui=underline guifg=#80a0ff
    sym"@text.uri"                         { Underlined }, -- @text.uri      xxx links to Underlined
    sym"@text.underline"                   { Underlined }, -- @text.underline xxx links to Underlined
    MatchParen                             { bg="#9a409a", }, -- MatchParen     xxx guibg=#9a409a
    Ignore                                 { fg="bg", }, -- Ignore         xxx guifg=bg
    NvimInternalError                      { fg="red", bg="red", }, -- NvimInternalError xxx guifg=Red guibg=Red
    NvimFigureBrace                        { NvimInternalError }, -- NvimFigureBrace xxx links to NvimInternalError
    NvimSingleQuotedUnknownEscape          { NvimInternalError }, -- NvimSingleQuotedUnknownEscape xxx links to NvimInternalError
    NvimInvalidSingleQuotedUnknownEscape   { NvimInternalError }, -- NvimInvalidSingleQuotedUnknownEscape xxx links to NvimInternalError
    minimapCursor                          { fg="#000000", bg="#af5f8f", }, -- minimapCursor  xxx guifg=#000000 guibg=#af5f8f
    minimapRange                           { fg="#ffff87", bg="#4f4f4f", }, -- minimapRange   xxx guifg=#ffff87 guibg=#4f4f4f
    minimapDiffRemoved                     { fg="#fc1a70", }, -- minimapDiffRemoved xxx guifg=#fc1a70
    minimapDiffAdded                       { fg="#a4e400", }, -- minimapDiffAdded xxx guifg=#a4e400
    minimapDiffLine                        { fg="#af87ff", }, -- minimapDiffLine xxx guifg=#af87ff
    minimapCursorDiffRemoved               { fg="#fc1a70", bg="#5f5f5f", }, -- minimapCursorDiffRemoved xxx guifg=#fc1a70 guibg=#5f5f5f
    minimapCursorDiffAdded                 { fg="#a4e400", bg="#5f5f5f", }, -- minimapCursorDiffAdded xxx guifg=#a4e400 guibg=#5f5f5f
    minimapCursorDiffLine                  { fg="#af87ff", bg="#5f5f5f", }, -- minimapCursorDiffLine xxx guifg=#af87ff guibg=#5f5f5f
    minimapRangeDiffRemoved                { fg="#fc1a70", bg="#4f4f4f", }, -- minimapRangeDiffRemoved xxx guifg=#fc1a70 guibg=#4f4f4f
    minimapRangeDiffAdded                  { fg="#a4e400", bg="#4f4f4f", }, -- minimapRangeDiffAdded xxx guifg=#a4e400 guibg=#4f4f4f
    minimapRangeDiffLine                   { fg="#af87ff", bg="#4f4f4f", }, -- minimapRangeDiffLine xxx guifg=#af87ff guibg=#4f4f4f
    lushify_FF0000                         { fg="#000000", bg="#ff0000", }, -- lushify_FF0000 xxx guifg=#000000 guibg=#ff0000
    lushify_91087F                         { fg="#ffffff", bg="#91087f", }, -- lushify_91087F xxx guifg=#ffffff guibg=#91087f
    lushify_000000                         { fg="#ffffff", bg="#000000", }, -- lushify_000000 xxx guifg=#ffffff guibg=#000000
    lushify_1A0016                         { fg="#ffffff", bg="#1a0016", }, -- lushify_1A0016 xxx guifg=#ffffff guibg=#1a0016
    lushify_730099                         { fg="#ffffff", bg="#730099", }, -- lushify_730099 xxx guifg=#ffffff guibg=#730099
    lushify_994DB3                         { fg="#000000", bg="#994db3", }, -- lushify_994DB3 xxx guifg=#000000 guibg=#994db3
    lushify_6D5DAC                         { fg="#000000", bg="#6d5dac", }, -- lushify_6D5DAC xxx guifg=#000000 guibg=#6d5dac
    lushify_18171C                         { fg="#ffffff", bg="#18171c", }, -- lushify_18171C xxx guifg=#ffffff guibg=#18171c
    lushify_4C2673                         { fg="#ffffff", bg="#4c2673", }, -- lushify_4C2673 xxx guifg=#ffffff guibg=#4c2673
    search_base                            { fg="#18171c", bg="#6d5dac", }, -- search_base    xxx guifg=#18171c guibg=#6d5dac
    Search                                 { search_base }, -- Search         xxx links to search_base
  }
end)
return theme