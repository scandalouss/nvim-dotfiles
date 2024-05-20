local config=require("david.theme.config")
local none='none'
local theme={}

function theme.setup()
    local options=config.options
    local pal=require("david.theme.colors."..options.palette)

    theme.highlights={
        --editor ui
        ColorColumn={bg=pal.bg2},
        Conceal={fg=pal.normals.white},
        Cursor={fg=pal.bg1,bg=pal.fg1},
        CursorIM={link='Cursor'},
        lCursor={link='Cursor'},
        CursorLine={bg=pal.bg2},
        CursorColumn={bg=pal.bg2},
        CursorLineNr={fg=pal.normals.green,bg=pal.bg1},
        DiffAdd={fg=pal.normals.white,bg=pal.normals.green},
        DiffChange={fg=pal.normals.white,bg=pal.brights.gray},
        DiffDelete={bg=pal.bg2},
        DiffText={fg=pal.normals.white,bg=pal.normals.red},
        Directory={fg=pal.normals.cyan},
        EndOfBuffer={fg=pal.bg4},
        FoldColumn={fg=pal.normals.white,bg=pal.bg2},
        Folded={fg=pal.fg4,bg=pal.bg1},
        FloatBorder={fg=pal.normals.blue,bg=pal.bg2},
        FloatTitle={fg=pal.brights.blue,bg=pal.bg2},
        Ignore={fg=pal.normals.white},
        IncSearch={fg=pal.fg1,bg=pal.brights.magenta},
        LineNr={fg=pal.fg2,bg=pal.bg2},
        MatchParen={fg=pal.brights.blue},
        ModeMsg={bold=true,fg=pal.brights.yellow},
        MoreMsg={bold=true,fg=pal.brights.green},
        MsgArea={bg=pal.bg1},
        MsgSeparator={fg=pal.bg2,bg=pal.bg3},
        NonText={fg=pal.bg4,bg=pal.bg2},
        Normal={fg=pal.fg1,bg=pal.bg1},
        NormalFloat={fg=pal.normals.white,bg=pal.bg2},
        NormalNC={link='Normal'},
        Pmenu={fg=pal.fg1,bg=pal.bg2},
        PmenuSel={bg=pal.bg3},
        Question={fg=pal.brights.cyan},
        QuickFixLine={bg=pal.brights.gray},
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
        Comment={fg=pal.brights.gray,bg=none},

        Constant={fg=pal.normals.cyan,bg=none},
        String={fg=pal.normals.green},
        Number={link='Constant'},
        Boolean={link='Constant'},
        Character={link='Constant'},
        Float={link='Constant'},

        Identifier={fg=pal.normals.magenta,italic=true},
        Function={fg=pal.brights.yellow,italic=true},

        Statement={fg=pal.normals.red},
        Conditional={link='Statement'},
        Repeat={link='Statement'},
        Keyword={link='Statement',bold=true},
        Label={fg=pal.normals.blue},
        Exception={link='Statement'},
        Operator={link='Statement'},

        PreProc={fg=pal.normals.red},
        Define={link='Preproc'},
        PreCondit={fg=pal.normals.red},
        Include={fg=pal.normals.red},
        Macro={fg=pal.normals.blue},

        Type={fg=pal.normals.magenta},
        Typedef={link='Type'},
        StorageClass={link='Type',italic=true},
        Structure={link='Type'},

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
        DiagnosticVirtualTextError={bg=pal.normals.red,fg=pal.brights.red},
        DiagnosticVirtualTextWarn={bg=pal.normals.magenta,fg=pal.brights.magenta},
        DiagnosticVirtualTextInfo={bg=pal.normals.blue,fg=pal.brights.blue},
        DiagnosticVirtualTextHint={bg=pal.normals.green,fg=pal.brights.green},
        DiagnosticUnderlineError={link='DiagnosticError',underline=true},
        DiagnosticUnderlineWarn={link='DiagnosticWarn',underline=true},
        DiagnosticUnderlineInfo={link='DiagnosticInfo',underline=true},
        DiagnosticUnderlineHint={link='DiagnosticHint',underline=true},
        DiagnosticLineNrError={link='DiagnosticError'},
        DiagnosticLineNrWarn={link='DiagnosticWarn'},
        DiagnosticLineNrInfo={link='DiagnosticInfo'},
        DiagnosticLineNrHint={link='DiagnosticHint'},

        --tree-sitter **W I P** these are subject to change
        --might break in the future, keep an eye on these
        ['@annotation']={link='PreProc'},
        ['@attribute']={link='PreProc'},
        ['@boolean']={link='Boolean'},
        ['@character']={link='Character'},
        ['@character.special']={link='SpecialChar'},
        ['@comment']={link='Comment'},
        ['@keyword']={link='Keyword'},
        ['@keyword.function']={link='Function'},
        ['@keyword.conditional']={link='Conditional'},
        ['@constant']={link='Constant'},
        ['@constant.builtin']={link='Special'},
        ['@constant.macro']={link='Define'},
        ['@keyword.debug']={link='Debug'},
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
        ['@namespace.builtin']={fg=pal.normals.red},
        ['@none']={},
        ['@number']={link='Number'},
        ['@keyword.directive']={link='PreProc'},
        ['@keyword.repeat']={link='Repeat'},
        ['@keyword.storage']={link='StorageClass'},
        ['@string']={link='String'},
        ['@markup.link.label']={link='SpecialChar'},
        ['@markup.link.label.symbol']={link='Identifier'},
        ['@tag']={link='Label'},
        ['@tag.attribute']={fg=pal.normals.green},
        ['@tag.delimiter']={link='Delimiter'},
        ['@markup']={link='@none'},
        ['@markup.environment']={link='Macro'},
        ['@markup.environment.name']={link='Type'},
        ['@markup.raw']={link='String'},
        ['@markup.math']={link='Special'},
        ['@markup.strong']={bold=true},
        ['@markup.emphasis']={italic=true},
        ['@markup.strikethrough']={strikethrough=true},
        ['@markup.underline']={underline=true},
        ['@markup.heading']={link='Title'},
        ['@comment.note']={fg=pal.normals.green},
        ['@comment.error']={fg=pal.normals.red},
        ['@comment.hint']={link='@comment.note'},
        ['@comment.info']={fg=pal.normals.blue},
        ['@comment.warning']={fg=pal.normals.magenta},
        ['@comment.todo']={fg=pal.normals.yellow},
        ['@markup.link.url']={link='Underlined'},
        ['@type']={link='Type'},
        ['@type.definition']={link='Typedef'},
        ['@type.qualifier']={link='@keyword'},

        ['@operator']={link='Operator'},

        ['@punctuation.delimiter']={link='Delimiter'},
        ['@punctuation.bracket']={link='Delimiter'},
        ['@punctuation.special']={link='Delimiter'},
        ['@markup.list']={link='@punctuation.special'},
        ['@markup.list.markdown']={fg=pal.brights.yellow},

        ['@string.documentation']={fg=pal.brights.yellow},
        ['@string.regexp']={link='String'},
        ['@string.escape']={fg=pal.brights.yellow},

        ['@constructor']={fg=pal.normals.yellow},
        ['@variable.parameter']={fg=pal.normals.magenta},
        ['@variable.parameter.builtin']={fg=pal.brights.magenta},

        ['@label']={fg=pal.normals.blue},

        ['@type.builtin']={link='Type'},
        ['@variable.member']={fg=pal.normals.green},
        ['@property']={fg=pal.normals.green},

        ['@variable']={link='Identifier'},
        ['@variable.builtin']={fg=pal.brights.magenta},
        ['@module.builtin']={fg=pal.brights.magenta},

        ['@markup.link']={fg=pal.normals.teal,underline=true},
        ['@markup.list.unchecked']={fg=pal.normals.blue},
        ['@markup.list.checked']={fg=pal.normals.green},

        ['@diff.plus']={link='DiffAdd'},
        ['@diff.minus']={link='DiffDelete'},
        ['@diff.delta']={link='DiffChange'},

        ['@module']={link='Include'},

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
        ['@lsp.type.typeAlias']={link='@type.definiton'},
        ['@lsp.type.unresolvedReference']={fg=pal.normals.red,undercurl=true},
        ['@lsp.type.variable']={},
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
        ['@lsp.typemod.variable.defaultLibrary']={link='@variable.builtin'},
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
