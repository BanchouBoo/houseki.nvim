local Houseki = {}

---Configure the theme and palette
function Houseki.setup(...)
    require('houseki.theme').setup(...)
end

---@private
---Bootstrap the colorscheme
function Houseki.shine()
    Houseki.palette = require('houseki.theme').shine()
end

---Load the colorscheme
function Houseki.load()
    require('houseki.theme').load()
end

return Houseki
