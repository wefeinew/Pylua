-- combinedModule.lua

local combinedModule = {}

local variables = {} 
local functions = {}

function combinedModule.def(varName, value)
    variables[varName] = value
end

function combinedModule.get(varName)
    return variables[varName]
end

function combinedModule.def_function(funcName, funcBody)
    functions[funcName] = funcBody
end

function combinedModule.call(funcName, ...)
    local func = functions[funcName]
    if func then
        return func(...)
    else
        error("Function not found: " .. funcName)
    end
end

return combinedModule
