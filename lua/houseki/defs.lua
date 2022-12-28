local M = {}

function M.groups(p, cfg)
    return {
        --------------------------------
        ------------- BASE -------------
        --------------------------------

        ColorColumn = { bg = p.highlight_overlay },
        Conceal = { bg = p.none },
        Cursor = { reverse = true },
        CursorColumn = { bg = p.highlight },
        CursorIM = { reverse = true },
        CursorLine = { bg = p.highlight_inactive },
        CursorLineNr = { fg = p.subtle },
        DarkenedPanel = { bg = p.surface },
        DarkenedStatusline = { bg = p.surface },
        Directory = { fg = p.phosphophyllite, bg = p.none },
        EndOfBuffer = { fg = p.base },
        ErrorMsg = { fg = p.cinnabar, bold = true },
        FoldColumn = {},
        Folded = { fg = p.text, bg = p.surface },
        IncSearch = { fg = p.base, bg = p.cinnabar },
        CurSearch = { link = 'IncSearch' },
        LineNr = { fg = p.inactive },
        MatchParen = { fg = p.text, bg = p.overlay },
        -- ModeMsg = {},
        MoreMsg = { fg = p.aquamarine },
        NonText = { fg = p.inactive },
        Normal = { fg = p.text, bg = p.base },
        NormalFloat = { fg = p.text, bg = p.surface },
        FloatBorder = { fg = p.subtle, bg = p.surface },
        Pmenu = { fg = p.subtle, bg = p.surface },
        PmenuSbar = { bg = p.overlay },
        PmenuSel = { fg = p.base, bg = p.rosequartz },
        PmenuThumb = { bg = p.inactive },
        Question = { fg = p.amethyst },
        -- QuickFixLine = {},
        Search = { fg = p.base, bg = p.rosequartz },
        SpecialKey = { fg = p.phosphophyllite },
        SpellBad = { undercurl = true, sp = p.cinnabar },
        SpellCap = { undercurl = true, sp = p.amethyst },
        SpellLocal = { undercurl = true, sp = p.aquamarine },
        SpellRare = { undercurl = true, sp = p.phosphophyllite },
        SignColumn = { fg = p.text, bg = p.base },
        StatusLine = { fg = p.text, bg = p.surface },
        StatusLineNC = { fg = p.subtle, bg = p.surface },
        TabLine = { fg = p.text, bg = p.base },
        TabLineFill = { fg = p.text, bg = p.overlay },
        TabLineSel = { fg = p.overlay, bg = p.rosequartz }, -- For current tab indicator in bufferline.nvim
        -- StatusLineTerm = {},
        -- StatusLineTermNC = {},
        Title = { fg = p.rosequartz },
        VertSplit = { fg = p.overlay },
        Visual = { bg = p.highlight_overlay },
        -- VisualNOS = {},
        WarningMsg = { fg = p.amethyst },
        -- Whitespace = {},
        -- WildMenu = {},

        Boolean = { fg = p.cinnabar },
        Character = { fg = p.coral },
        Comment = { fg = p.inactive },
        Conditional = { fg = p.sapphire },
        Constant = { fg = p.amethyst },
        Debug = { fg = p.rosequartz },
        Define = { fg = p.aquamarine },
        Delimiter = { fg = p.amethyst },
        Error = { fg = p.cinnabar },
        Exception = { fg = p.sapphire },
        Float = { fg = p.cinnabar },
        Function = { fg = p.aquamarine },
        Identifier = { fg = p.text },
        -- Ignore = {},
        Include = { fg = p.aquamarine },
        Keyword = { fg = p.sapphire },
        Label = { fg = p.phosphophyllite },
        Macro = { fg = p.aquamarine },
        Number = { fg = p.cinnabar },
        Operator = { fg = p.citrine },
        PreCondit = { fg = p.aquamarine },
        PreProc = { fg = p.aquamarine },
        Repeat = { fg = p.sapphire },
        Special = { fg = p.aquamarine },
        SpecialChar = { fg = p.rosequartz },
        SpecialComment = { fg = p.aquamarine },
        Statement = { fg = p.sapphire },
        StorageClass = { fg = p.jade },
        String = { fg = p.rosequartz },
        Structure = { fg = p.phosphophyllite },
        Tag = { fg = p.rosequartz },
        Todo = { fg = p.aquamarine },
        Type = { fg = p.phosphophyllite },
        Typedef = { fg = p.phosphophyllite },
        Underlined = { fg = p.phosphophyllite, undercurl = true },

        -- # Diff/diff
        DiffAdd = { fg = p.phosphophyllite },
        DiffChange = { fg = p.citrine },
        DiffDelete = { fg = p.cinnabar },
        DiffText = { fg = p.text },
        diffFile = { fg = p.subtle }, -- diff command on top
        diffIndexLine = { fg = p.inactive }, -- commit index below the diff command
        diffAdded = { link = 'DiffAdd' }, -- for added lines
        diffRemoved = { link = 'DiffDelete' }, -- for removed lines
        diffChanged = { link = 'DiffChange' }, -- IDK, maybe for changed lines
        diffNewFile = { link = 'DiffAdd' }, -- file with `+++ marker
        diffOldFile = { link = 'DiffDelete' }, -- file with `---` marker
        diffLine = { fg = p.inactive }, -- loc summary
        diffSubname = { fg = p.amethyst }, -- context after loc summary

        -- # HTML
        htmlArg = { fg = p.aquamarine },
        htmlEndTag = { fg = p.subtle },
        htmlLink = { fg = p.text },
        htmlTag = { fg = p.subtle },
        htmlTagN = { fg = p.cinnabar },
        htmlTagName = { fg = p.phosphophyllite },
        htmlH1 = { fg = p.rosequartz },

        -- # markdown
        markdownH1 = { fg = p.cinnabar, bold = true },
        markdownH2 = { fg = p.rosequartz, bold = true },
        markdownH3 = { fg = p.amethyst, bold = true },
        markdownH4 = { fg = p.phosphophyllite, bold = true },
        markdownH5 = { fg = p.aquamarine, bold = true },
        markdownH6 = { fg = p.sapphire, bold = true },
        markdownHeadingDelimiter = { fg = p.subtle, bold = true },
        markdownLinkText = { fg = p.aquamarine },
        markdownLinkTextDelimiter = { link = 'Comment' },
        markdownUrl = { fg = p.sapphire },
        markdownLink = { link = 'markdownUrl' },
        markdownLinkDelimiter = { link = 'Comment' },
        markdownCode = { fg = p.phosphophyllite },
        markdownCodeDelimiter = { fg = p.phosphophyllite },
        markdownListMarker = { fg = p.cinnabar, bold = true },
        markdownOrderedListMarker = { link = 'markdownListMarker' },

        -- xml
        xmlTag = { fg = p.subtle },
        xmlTagName = { fg = p.rosequartz },
        xmlAttrib = { fg = p.phosphophyllite },
        xmlString = { fg = p.amethyst },

        --------------------------------------
        ------------- TREESITTER -------------
        --------------------------------------

        -- TSAnnotation = {},
        -- TSAttribute = {},
        TSBoolean = { fg = p.rosequartz },
        -- TSCharacter = {},
        TSComment = { link = 'Comment' },
        -- TSConditional = {},
        TSConstBuiltin = { fg = p.cinnabar },
        -- TSConstMacro = {},
        TSConstant = { fg = p.phosphophyllite },
        TSConstructor = { fg = p.phosphophyllite },
        -- TSEmphasis = {},
        -- TSError = {},
        -- TSException = {},
        TSField = { fg = p.phosphophyllite },
        -- TSFloat = {},
        TSFuncBuiltin = { fg = p.cinnabar },
        -- TSFuncMacro = {},
        TSFunction = { fg = p.rosequartz },
        TSInclude = { fg = p.sapphire },
        TSKeyword = { fg = p.sapphire },
        -- TSKeywordFunction = {},
        TSKeywordOperator = { fg = p.sapphire },
        TSLabel = { fg = p.phosphophyllite },
        -- TSLiteral = {},
        -- TSMethod = {},
        -- TSNamespace = {},
        -- TSNone = {},
        -- TSNumber = {},
        TSOperator = { fg = p.sapphire },
        TSParameter = { fg = p.aquamarine },
        -- TSParameterReference = {},
        TSProperty = { fg = p.aquamarine },
        TSPunctBracket = { fg = p.subtle },
        TSPunctDelimiter = { fg = p.subtle },
        TSPunctSpecial = { fg = p.subtle },
        -- TSRepeat = {},
        -- TSStrike = {},
        TSString = { fg = p.amethyst },
        TSStringEscape = { fg = p.sapphire },
        -- TSStringRegex = {},
        -- TSSymbol = {},
        TSTag = { fg = p.phosphophyllite },
        TSTagDelimiter = { fg = p.subtle },
        TSText = { fg = p.text },
        -- TSTitle = {},
        -- TSType = {},
        -- TSTypeBuiltin = {},
        TSURI = { fg = p.amethyst },
        -- TSUnderline = {},
        TSVariable = { fg = p.text },
        TSVariableBuiltin = { fg = p.cinnabar },

        -- nvim-treesitter-refactor
        TSDefinition = { bg = p.highlight_overlay },
        TSDefinitionUsage = { bg = p.highlight_overlay },
        TSCurrentScope = { bg = p.inactive },

        -- markdown
        markdownTSURI = { fg = p.aquamarine },
        markdownTSTextReference = { fg = p.rosequartz },

        -------------------------------
        ------------- LSP -------------
        -------------------------------

        -- # lsp
        LspReferenceText = { fg = p.rosequartz, bg = p.highlight },
        LspReferenceRead = { fg = p.rosequartz, bg = p.highlight },
        LspReferenceWrite = { fg = p.rosequartz, bg = p.highlight },

        -- # diagnostics
        -- new api (0.6 ownwards)
        DiagnosticError = { fg = p.cinnabar },
        DiagnosticWarn = { fg = p.amethyst },
        DiagnosticInfo = { fg = p.phosphophyllite },
        DiagnosticHint = { fg = p.aquamarine },

        DiagnosticUnderlineError = { sp = p.cinnabar, undercurl = true },
        DiagnosticUnderlineWarn = { sp = p.amethyst, undercurl = true },
        DiagnosticUnderlineInfo = { sp = p.phosphophyllite, undercurl = true },
        DiagnosticUnderlineHint = { sp = p.aquamarine, undercurl = true },

        -----------------------------------
        ------------- PLUGINS -------------
        -----------------------------------

        -- leap.nvim
        -- https://github.com/ggandor/leap.nvim
        LeapLabelPrimary = { fg = p.base, bg = p.cinnabar },
        LeapLabelSecondary = { fg = p.base, bg = p.sapphire },

        -- harpoon
        -- https://github.com/ThePrimeagen/harpoon
        HarpoonWindow = { fg = p.text, bg = p.base },
        HarpoonBorder = { fg = p.subtle, bg = p.base },

        -- gitsigns.nvim
        -- https://github.com/lewis6991/gitsigns.nvim
        -- SignAdd = { fg = p.phosphophyllite },
        -- SignChange = { fg = p.rosequartz },
        -- SignDelete = { fg = p.cinnabar },
        -- GitSignsAdd = { fg = p.phosphophyllite },
        -- GitSignsChange = { fg = p.rosequartz },
        -- GitSignsDelete = { fg = p.cinnabar },

        -- which-key.nvim
        -- https://github.com/folke/which-key.nvim
        WhichKey = { fg = p.sapphire },
        WhichKeyGroup = { fg = p.phosphophyllite },
        WhichKeySeparator = { fg = p.subtle },
        WhichKeyDesc = { fg = p.text },
        WhichKeyFloat = { bg = p.surface },
        WhichKeyValue = { fg = p.rosequartz },

        -- indent-blankline.nvim
        -- https://github.com/lukas-reineke/indent-blankline.nvim
        -- IndentBlanklineChar = { fg = p.overlay },
  }
end

function M.load_terminal(palette)
    -- black
    vim.g.terminal_color_0 = palette.base
    vim.g.terminal_color_8 = palette.base
    -- red
    vim.g.terminal_color_1 = palette.cinnabar
    vim.g.terminal_color_9 = palette.cinnabar
    -- green
    vim.g.terminal_color_2 = palette.phosphophyllite
    vim.g.terminal_color_10 = palette.jade
    -- yellow
    vim.g.terminal_color_3 = palette.citrine
    vim.g.terminal_color_11 = palette.citrine
    -- blue
    vim.g.terminal_color_4 = palette.sapphire
    vim.g.terminal_color_12 = palette.sapphire
    -- magenta
    vim.g.terminal_color_5 = palette.rosequartz
    vim.g.terminal_color_13 = palette.rosequartz
    -- cyan
    vim.g.terminal_color_6 = palette.aquamarine
    vim.g.terminal_color_14 = palette.aquamarine
    -- white
    vim.g.terminal_color_7 = palette.text
    vim.g.terminal_color_15 = palette.text
end

return M
