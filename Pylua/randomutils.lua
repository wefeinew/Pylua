-- random_utils.lua

local random_utils = {}

local seed = os.time()
math.randomseed(seed)

function random_utils.randint(min, max)
    return math.random(min, max)
end

function random_utils.uniform(min, max)
    return min + math.random() * (max - min)
end

function random_utils.choice(sequence)
    return sequence[math.random(#sequence)]
end

function random_utils.random_alphanumeric(length)
    local characters = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
    local result = ""
    for _ = 1, length do
        local randomIndex = math.random(#characters)
        result = result .. characters:sub(randomIndex, randomIndex)
    end
    return result
end

function random_utils.random_letter(length)
    local letters = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
    local result = ""
    for _ = 1, length do
        local randomIndex = math.random(#letters)
        result = result .. letters:sub(randomIndex, randomIndex)
    end
    return result
end

return random_utils
