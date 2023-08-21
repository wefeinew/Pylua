-- Модуль pause.lua

local M = {}

function M.pause(message)
    message = message or "Пауза. Нажмите Enter для продолжения..."
    io.write(message)
    io.flush()
    io.read()
end

return M
