local config=require("david.theme.config")
local none='none'
local theme={}

function theme.setup()
    local options=config.options
    local pal=require("david.theme.colors."..options.palette)

    theme.highlights={
        --editor ui
        Conceal={fg=pal.normals.white},
        Cursor={fg=pal.bg1,bg=pal.fg1},
        CursorIM={link='Cursor'},
        lCursor={link='Cursor'},
        CursorLine={bg=pal.bg3},
        CursorLineNr={fg=pal.normals.green,bg=pal.bg1},
        DiffAdd={fg=pal.normals.green,bg=pal.normals.green},
        DiffChange={fg=pal.normals.yellow,bg=pal.normals.yellow},
        DiffDelete={fg=pal.normals.red, bg=pal.normals.red},
        DiffText={fg=pal.normals.white,bg=pal.normals.red},
        Directory={fg=pal.normals.cyan},
        EndOfBuffer={fg=pal.bg4},
        FloatBorder={fg=pal.normals.blue,bg=pal.bg3},
        FloatTitle={fg=pal.brights.blue,bg=pal.bg3,bold=true},
        Ignore={fg=pal.normals.white},
        IncSearch={fg=pal.fg1,bg=pal.normals.magenta},
        MatchParen={fg=pal.brights.blue},
        ModeMsg={bold=true,fg=pal.brights.yellow},
        MoreMsg={bold=true,fg=pal.brights.green},
        MsgArea={bg=pal.bg1,fg=pal.fg1},
        MsgSeparator={fg=pal.bg2,bg=pal.bg3},
        NonText={fg=pal.bg4,bg=pal.bg2},
        Normal={fg=pal.fg1,bg=pal.bg1},
        NormalFloat={fg=pal.normals.white,bg=pal.bg3},
        FoldColumn={link='Normal'},
        Folded={bg=none,fg=pal.fg4},
        CursorColumn={fg=pal.fg2, bg=none},
        NormalNC={link='Normal'},
        ColorColumn={fg=pal.fg1, bg=pal.bg4},
        LineNr={fg=pal.fg2, bg=none},
        Pmenu={fg=pal.fg1,bg=pal.bg2},
        PmenuSel={bg=pal.bg3},
        PmenuThumb={link="PmenuSel"},
        Question={fg=pal.brights.cyan},
        QuickFixLine={bg=pal.bg2},
        Search={fg=pal.brights.white,bg=pal.normals.red},
        SignColumn={link='FoldColumn'},
        SpecialKey={fg=pal.fg2,bg=pal.bg2},
        SpellBad={underline=true, fg=pal.brights.red},
        SpellCap={underline=true,fg=pal.brights.blue},
        SpellLocal={underline=true,fg=pal.brights.yellow},
        SpellRare={underline=true,fg=pal.brights.green},
        StatusLine={fg=pal.bg2,bg=pal.bg3},
        StatusLineNC={link='StatusLine'},
        Substitute={link='Search'},
        TablineFill={bg=pal.bg2},
        Tabline={bg=pal.bg3,fg=pal.fg1},
        TablineSel={bg=pal.brights.red,fg=pal.fg1},
        TermCursor={link='Cursor'},
        TermCursorNC={link='TermCursor'},
        Title={fg=pal.fg1},
        VertSplit={fg=pal.fg3,bg=pal.bg3},
        Visual={fg=pal.bg1,bg=pal.fg1},
        VisualNOS={link='Visual'},
        WarningMsg={fg=pal.fg1,bg=pal.normals.magenta},
        Whitespace={link='NonText'},
        WildMenu={fg=pal.normals.green,bg=pal.bg1},
        WinBar={bold=true},

        --syntax
        ErrorMsg={fg=pal.normals.red,bg=pal.bg2,bold=true},
        Comment={fg=pal.brights.gray,bg=none,italic=true},
        Done={fg=pal.brights.yellow},

        Constant={fg=pal.normals.magenta},
        String={fg=pal.normals.green,italic=true},
        Number={link='Constant'},
        Boolean={link='Constant'},
        Character={link='Constant'},
        Float={link='Constant'},

        Identifier={fg=pal.normals.blue,italic=true},
        Function={fg=pal.normals.green,bold=true},

        Statement={fg=pal.normals.red},
        Conditional={link='Statement'},
        Repeat={link='Statement'},
        Keyword={link='Statement',bold=true},
        Label={fg=pal.normals.blue},
        Exception={link='Statement'},
        Operator={fg=pal.normals.yellow,italic=true},

        PreProc={fg=pal.normals.cyan},
        Define={link='Preproc'},
        PreCondit={fg=pal.normals.cyan},
        Include={fg=pal.normals.cyan},
        Macro={fg=pal.normals.cyan},
        Structure={fg=pal.normals.cyan},

        Type={fg=pal.normals.yellow},
        Typedef={link='Type'},
        StorageClass={link='Type',italic=true},

        Special={fg=pal.normals.yellow},
        SpecialChar={link='Special'},
        Delimiter={link='Special'},
        SpecialComment={link='Special'},
        Debug={link='Special'},
        Tag={link='Special'},

        Error={fg=pal.fg1,bg=pal.normals.red},
        Todo={fg=pal.fg2},
        Underlined={underline=true},

        ---ruby highlighting
        rubyAttribute={fg=pal.normals.gray},
        rubyLocalVariableOrMethod={fg=pal.normals.blue},
        rubyGlobalVariable={link='rubyLocalVariableOrMethod',italic=true},
        rubyInstanceVariable={fg=pal.normals.blue},
        rubyKeyword={fg=pal.normals.red},
        rubyKeywordAsMethod={link='rubyKeyword',bold=true},
        rubyClassDeclaration={link='rubyKeyword',bold=true},
        rubyClass={link='rubyKeyword',bold=true},
        rubyNumber={fg=pal.normals.const},

        ---js highlighting
        jsBuiltins={fg=pal.normals.gray},
        jsFunction={fg=pal.normals.yellow,bold=true},
        jsGlobalObjects={fg=pal.normals.magenta},
        jsAssignmentExps={fg=pal.normals.blue},

        ---html highlights
        htmlLink={fg=pal.normals.blue,underline=true},
        htmlStatement={fg=pal.normals.red},
        htmlSpecialTagName={link='htmlStatement'},
        mkdCode={fg=pal.normals.gray},

        --diagnostics/lsp
        DiagnosticError={fg=pal.normals.red},
        DiagnosticWarn={fg=pal.normals.magenta},
        DiagnosticInfo={fg=pal.normals.blue},
        DiagnosticHint={fg=pal.normals.green},
        DiagnosticVirtualTextError={bg=pal.normals.red,fg=pal.brights.white},
        DiagnosticVirtualTextWarn={bg=pal.normals.magenta,fg=pal.brights.white},
        DiagnosticVirtualTextInfo={bg=pal.normals.blue,fg=pal.brights.white},
        DiagnosticVirtualTextHint={bg=pal.normals.green,fg=pal.brights.white},
        DiagnosticUnderlineError={link='DiagnosticError',underline=true},
        DiagnosticUnderlineWarn={link='DiagnosticWarn',underline=true},
        DiagnosticUnderlineInfo={link='DiagnosticInfo',underline=true},
        DiagnosticUnderlineHint={link='DiagnosticHint',underline=true},
        DiagnosticLineNrError={link='DiagnosticError'},
        DiagnosticLineNrWarn={link='DiagnosticWarn'},
        DiagnosticLineNrInfo={link='DiagnosticInfo'},
        DiagnosticLineNrHint={link='DiagnosticHint'},
        DiagnosticSignError={fg=pal.normals.red, bg=none},
        DiagnosticSignWarn={fg=pal.normals.magenta, bg=none},
        DiagnosticSignInfo={fg=pal.normals.blue, bg=none},
        DiagnosticSignHint={fg=pal.normals.green, bg=none},

        --nvim-dap-ui highlights
        DapUIScope={fg=pal.normals.cyan},
        DapUIType={fg=pal.normals.blue},
        DapUIModifiedValue={fg=pal.normals.cyan, bold=true},
        DapUIDecoration={fg=pal.normals.cyan},
        DapUIThread={fg=pal.normals.green},
        DapUIStoppedThread={fg=pal.normals.cyan},
        DapUISource={fg=pal.normals.blue},
        DapUILineNumber={fg=pal.normals.cyan},
        DapUIFloatBorder={fg=pal.normals.green},
        DapUIWatchesEmpty={fg=pal.normals.red},
        DapUIWatchesValue={fg=pal.normals.green},
        DapUIWatchesError={fg=pal.normals.red},
        DapUIBreakpointsPath={fg=pal.normals.cyan},
        DapUIBreakpointsInfo={fg=pal.normals.green},
        DapUIBreakpointsCurrentLine={fg=pal.normals.green},
        DapUIBreakpointsDisabledLine={fg=pal.brights.gray},
        DapUIStepOver={fg=pal.normals.cyan},
        DapUIStepInto={link="DapUIStepOver"},
        DapUIStepBack={link="DapUIStepOver"},
        DapUIStepOut={link="DapUIStepOver"},
        DapUIStop={fg=pal.normals.red},
        DapUIPlayPause={fg=pal.normals.green},
        DapUIRestart={link="DapUIPlayPause"},
        DapUIUnavailable={link="DapUIBreakpointsDisabledLine"},
        DapUIWinSelect={link="DapUIModifiedValue"},
        DapUIPlayPauseNC={fg=pal.normals.green},
        DapUIRestartNC={link="DapUIPlayPauseNC"},
        DapUIStopNC={fg=pal.normals.red},
        DapUIUnavailableNC={fg=pal.brights.gray},
        DapUIStepOverNC={fg=pal.normals.cyan},
        DapUIStepIntoNC={link="DapUIStepOverNC"},
        DapUIStepBackNC={link="DapUIStepOverNC"},
        DapUIStepOutNC={link="DapUIStepOverNC"},

        --git signs
        GitSignsAdd={fg=pal.normals.green,bg=pal.bg1},
        GitSignsChange={fg=pal.normals.yellow,bg=none},
        GitSignsDelete={fg=pal.normals.red,bg=none},

        --mini.notify
        MiniNotifyBorder={fg=pal.fg1, bg=pal.bg1},
        MiniNotifyTitle={link="MiniNotifyBorder"},
        MiniNotifyNormal={link="MiniNotifyBorder"},

        --tree-sitter **W I P** these are subject to change
        --might break in the future, keep an eye on these
        ['@annotation']={link='PreProc'},
        ['@attribute']={link='PreProc'},
        ['@boolean']={link='Boolean'},
        ['@character']={link='Character'},
        ['@character.special']={link='SpecialChar'},
        ['@comment']={link='Comment'},
        ['@keyword']={link='Keyword'},
        ['@keyword.function']={link='Keyword'},
        ['@keyword.conditional']={link='Conditional'},
        ['@constant']={link='Constant'},
        ['@constant.builtin']={link='Special'},
        ['@constant.macro']={link='Define'},
        ['@keyword.debug']={link='Debug'},
        ['@keyword.directive']={link="PreProc"},
        ['@keyword.directive.define']={link='Define'},
        ['@keyword.exception']={link='Exception'},
        ['@number.float']={link='Float'},
        ['@function']={link='Function'},
        ['@function.builtin']={link='Special'},
        ['@function.call']={link='@function'},
        ['@function.macro']={link='Macro'},
        ['@keyword.import']={link='Include'},
        ['@keyword.coroutine']={link='@keyword'},
        ['@keyword.operator']={link='@keyword'},
        ['@keyword.return']={link='@keyword'},
        ['@function.method']={link='Function'},
        ['@function.method.call']={link='@function.method'},
        ['@namespace']={fg=pal.fg1},
        ['@namespace.builtin']={fg=pal.fg1},
        ['@none']={},
        ['@number']={link='Number'},
        ['@keyword.repeat']={link='Repeat'},
        ['@keyword.storage']={link='StorageClass'},
        ['@string']={link='String'},
        ['@markup.link.label']={link='SpecialChar'},
        ['@markup.link.label.symbol']={link='Identifier'},
        ['@tag']={link='Tag'},
        ['@tag.attribute']={link="Identifier"},
        ['@tag.delimiter']={link='Delimiter'},
        ['@markup']={fg=pal.fg1},
        ['@markup.environment']={link='Macro'},
        ['@markup.environment.name']={link='Type'},
        ['@markup.raw']={link='String'},
        ['@markup.math']={link='Special'},
        ['@markup.strong']={bold=true},
        ['@markup.emphasis']={italic=true},
        ['@markup.strikethrough']={strikethrough=true},
        ['@markup.underline']={underline=true},
        ['@markup.heading']={link='Title'},
        ['@comment.note']={link="SpecialComment"},
        ['@comment.error']={link="ErrorMsg"},
        ['@comment.hint']={link='@comment.note'},
        ['@comment.info']={fg=pal.normals.blue},
        ['@comment.warning']={link="WarningMsg"},
        ['@comment.todo']={link="Todo"},
        ['@markup.link.url']={link='Underlined'},
        ['@type']={link='Type'},
        ['@type.definition']={link='Typedef'},
        ['@type.qualifier']={link='@type'},

        ['@operator']={link='Operator'},

        ['@punctuation.delimiter']={link='Delimiter'},
        ['@punctuation.bracket']={link='Delimiter'},
        ['@punctuation.special']={link='Delimiter'},
        ['@markup.list']={link='@punctuation.special'},
        ['@markup.list.markdown']={fg=pal.brights.yellow},

        ['@string.documentation']={fg=pal.brights.yellow},
        ['@string.regexp']={link='String'},
        ['@string.escape']={fg=pal.brights.yellow},

        ['@constructor']={link="Special"},
        ['@variable.parameter']={link="Identifier"},
        ['@variable.parameter.builtin']={link="@variable.parameter"},

        ['@label']={link="Label"},
        ['@text']={fg=pal.fg1},

        ['@type.builtin']={link='Type'},
        ['@variable.member']={link="Identifier"},
        ['@property']={fg=pal.normals.blue},

        ['@variable']={fg=pal.fg1},
        ['@variable.builtin']={link="Special"},
        ['@module.builtin']={link="Special"},
        ['@module']={fg=pal.fg1},

        ['@markup.link']={fg=pal.normals.teal,underline=true},
        ['@markup.list.unchecked']={fg=pal.normals.blue},
        ['@markup.list.checked']={fg=pal.normals.green},

        ['@diff.plus']={link='DiffAdd'},
        ['@diff.minus']={link='DiffDelete'},
        ['@diff.delta']={link='DiffChange'},

        --LSP semantic tokens
        ['@lsp.type.boolean']={link='@boolean'},
        ['@lsp.type.builtin']={link='@type.builtin'},
        ['@lsp.type.comment']={link='@comment'},
        ['@lsp.type.decorator']={link='@attribute'},
        ['@lsp.type.deriveHelper']={link='@attribute'},
        ['@lsp.type.enum']={link='@type'},
        ['@lsp.type.enumMember']={link='@constant'},
        ['@lsp.type.escapeSequence']={link='@string.escape'},
        ['@lsp.type.formatSpecifier']={link='@markup.list'},
        ['@lsp.type.generic']={link='@variable'},
        ['@lsp.type.interface']={fg=pal.normals.blue},
        ['@lsp.type.keyword']={link='@keyword'},
        ['@lsp.type.lifetime']={link='@keyword.storage'},
        ['@lsp.type.namespace']={link='@module'},
        ['@lsp.type.nubmer']={link='@number'},
        ['@lsp.type.operator']={link='@operator'},
        ['@lsp.type.parameter']={link='@variable.parameter'},
        ['@lsp.type.property']={link='@property'},
        ['@lsp.type.selfKeyword']={link='@variable.builtin'},
        ['@lsp.type.selfTypeKeyword']={link='@variable.builtin'},
        ['@lsp.type.string']={link='@string'},
        ['@lsp.type.type']={link="@type"},
        ['@lsp.type.typeParameter']={link="@type.definition"},
        ['@lsp.type.typeAlias']={link='@type.definiton'},
        ['@lsp.type.unresolvedReference']={fg=pal.normals.red,undercurl=true},
        ['@lsp.type.variable']={link="@variable"},
        ['@lsp.typemod.class.defaultLibrary']={link='@type.builtin'},
        ['@lsp.typemod.enum.defaultLibrary']={link='@type.builtin'},
        ['@lsp.typemod.enumMember.defaultLibrary']={link='constant.builtin'},
        ['@lsp.typemod.function.defaultLibrary']={link='@function.builtin'},
        ['@lsp.typemod.keyword.async']={link='@keyword.coroutine'},
        ['@lsp.typemod.keyword.injected']={link='@keyword'},
        ['@lsp.typemod.macro.defaultLibrary']={link='@function.builtin'},
        ['@lsp.typemod.method.defaultLibrary']={link='@function.builtin'},
        ['@lsp.typemod.operator.injected']={link='@operator'},
        ['@lsp.typemod.string.injected']={link='@string'},
        ['@lsp.typemod.struct.defaultLibrary']={link='@type.builtin'},
        ['@lsp.typemod.type.defaultLibrary']={fg=pal.normals.blue},
        ['@lsp.typemod.typeAlias.defaultLibrary']={link='@lsp.typemod.type.defaultLibrary'},
        ['@lsp.typemod.variable.callable']={link='@function'},
        ['@lsp.typemod.variable.injected']={link='@variable'},
        ['@lsp.typemod.variable.static']={link='@constant'},
    }

    theme.terminal_colors={
        termcolor0=pal.normals.gray,
        termcolor1=pal.normals.red,
        termcolor2=pal.normals.green,
        termcolor3=pal.normals.yellow,
        termcolor4=pal.normals.blue,
        termcolor5=pal.normals.magenta,
        termcolor6=pal.normals.cyan,
        termcolor7=pal.normals.white,
        termcolor8=pal.brights.gray,
        termcolor9=pal.brights.red,
        termcolor10=pal.brights.green,
        termcolor11=pal.brights.yellow,
        termcolor12=pal.brights.blue,
        termcolor13=pal.brights.magenta,
        termcolor14=pal.brights.cyan,
        termcolor15=pal.brights.white,
    }

    for option,value in pairs(theme.terminal_colors) do
        vim.g[option]=value
    end

    theme.highlights=vim.tbl_extend("force",{},theme.highlights,options.highlights)

    for group,colors in pairs(theme.highlights) do
        if colors.style then
            if type(colors.style)=="table" then
                colors=vim.tbl_extend("force",colors,colors.style)
            end
            colors.style=nil
        end
        vim.api.nvim_set_hl(0,group,colors)
    end
end
return theme
