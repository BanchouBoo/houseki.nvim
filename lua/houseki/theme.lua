local Houseki = {
    -- Name of the theme
    name = 'houseki',
    config = {},
}

function Houseki.setup(cfg)
    if cfg ~= nil then
        Houseki.config = vim.tbl_extend('force', Houseki.config, cfg)
    end

    return Houseki
end

function Houseki.shine()
    local palette = require('houseki.palette')
    local defs = require('houseki.defs')

    vim.g.colors_name = Houseki.name
    vim.o.termguicolors = true

    local hi_groups = defs.groups(palette, Houseki.config)

    for group, spec in pairs(hi_groups) do
        vim.api.nvim_set_hl(0, group, spec)
    end

    defs.load_terminal(palette)

    return palette
end

function Houseki.load()
    vim.api.nvim_cmd({ cmd = 'colorscheme', args = { Houseki.name } }, {})
end

return Houseki
