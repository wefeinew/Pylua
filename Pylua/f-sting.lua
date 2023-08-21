local stringPrintfModule = {}

function stringPrintfModule.printf(formatString, ...)
    local args = {...}
    local index = 1

    local function replacePlaceholder(match)
        local specifier = match:sub(-1)
        local arg = args[index]
        index = index + 1

        if specifier == "s" then
            return tostring(arg)
        elseif specifier == "d" then
            return string.format("%d", arg)
        elseif specifier == "f" then
            return string.format("%.2f", arg)
        else
            return match
        end
    end

    local formattedString = formatString:gsub("{(.-)}", replacePlaceholder)
    return formattedString
end

return stringPrintfModule
``}

return stringPrintfModule
