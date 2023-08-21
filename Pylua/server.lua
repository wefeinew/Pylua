-- server.lua

local socket = require("socket")
local http = require("socket.http")
local url = require("socket.url")

local server = {}

function server.start(port, admin_password, site)
    local function handle_request(request)
        local path, query = request:match("^(.-)%?(.*)$")

        if path == "/admin" and query == "password=" .. admin_password then
            return "Admin page: Access granted"
        elseif path == "/fetch" then
            local response = http.request(site)
            return response or "Failed to fetch"
        else
            return "Invalid request"
        end
    end

    local server_socket = socket.bind("*", port)
    print("The server is running on the port: " .. port)

    while true do
        local client = server_socket:accept()

        local request = client:receive("*l")
        local response = handle_request(request)

        local headers = "HTTP/1.0 200 OK\r\nContent-Type: text/html\r\n\r\n"
        local full_response = headers .. response

        client:send(full_response)
        client:close()
    end
end

return server
