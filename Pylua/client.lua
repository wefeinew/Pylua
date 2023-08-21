-- client.lua

local socket = require("socket")
local client = {}

function client.connect(server_address, port)
    local client_socket = socket.tcp()
    client_socket:settimeout(5)  -- Установка таймаута подключения (в секундах)
    local success, err = client_socket:connect(server_address, port)
    if not success then
        return nil, err
    end
    return client_socket
end

function client.send(client_socket, data)
    client_socket:send(data)
end

function client.receive(client_socket)
    local received_data, err = client_socket:receive("*l")  -- Получение строки данных
    return received_data, err
end

function client.close(client_socket)
    client_socket:close()
end

return client
