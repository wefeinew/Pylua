local colorTextModule = {}

local COLORS = {
    reset = "\27[0m",
    black = "\27[30m",
    red = "\27[31m",
    green = "\27[32m",
    yellow = "\27[33m",
    blue = "\27[34m",
    magenta = "\27[35m",
    cyan = "\27[36m",
    white = "\27[37m"
}

function colorTextModule.colorize(text, color)
    local colorCode = COLORS[color] or ""
    return colorCode .. text .. COLORS.reset
end

return colorTextModule
