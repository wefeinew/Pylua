local opensite = {}

function opensite.open(url)
    local command = 'firefox "' .. url .. '"'

    os.execute(command)
end

return opensite