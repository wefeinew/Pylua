local waitModule = {}

function waitModule.wait(seconds)
    local start = os.clock()
    while os.clock() - start < seconds do
        -- Пустой цикл ожидания
    end
end

function waitModule.wait_minutes(minutes)
    local seconds = minutes * 60
    waitModule.wait(seconds)
end

function waitModule.wait_hours(hours)
    local seconds = hours * 3600
    waitModule.wait(seconds)
end

function waitModule.wait_days(days)
    local seconds = days * 86400
    waitModule.wait(seconds)
end

return waitModule
