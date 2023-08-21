-- local_server.lua
local socket = require("socket")

local M = {}  -- Создаем таблицу для модуля

function M.startServer()
  -- Создаем сервер на локальном IP-адресе 127.0.0.1 и порту 12345
  local server = socket.bind("127.0.0.1", 12345)

  print("Сервер запущен на 127.0.0.1:12345")

  while true do
    -- Принимаем подключение
    local client = server:accept()
    print("Подключение от клиента:", client:getpeername())

    -- Читаем данные от клиента
    local data, err = client:receive()
    if data then
      print("Получено:", data)
      
      -- Отправляем ответ клиенту
      client:send("OutPut:\n")
    else
      print("Error:", err)
    end

    -- Закрываем соединение с клиентом
    client:close()
  end
end

return M  -- Возвращаем таблицу модуля
