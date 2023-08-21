-- input.lua

local inputModule = {}

-- Функция для ввода данных с текстовым приглашением
function inputModule.input(prompt)
    io.write(prompt)
    io.flush()
    return io.read()
end

return inputModule
