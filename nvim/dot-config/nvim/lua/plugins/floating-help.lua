return {
    'Tyler-Barham/floating-help.nvim',
    config = function()
        local fh = require('floating-help')
        fh.setup({
            width = 80,
            height = 0.6,                      -- Decimals are a percentage of the editor
            position = 'C',                    -- NW,N,NW,W,C,E,SW,S,SE (C==center)
        })
    end
}
