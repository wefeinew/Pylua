
local opensite = {}

function opensite.open(url)
    local command = open -a Safari "' .. url .. '"'

    os.execute(command)
end

return opensite