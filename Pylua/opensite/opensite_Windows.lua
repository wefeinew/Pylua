-- opensite.lua

local opensite = {}

function opensite.open(url)
    local command = 'start "" "' .. url .. '"'
    os.execute(command)
end

return opensite
