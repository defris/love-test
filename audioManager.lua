local AudioManager = {}
local sounds = {}

local function loadSound(name, filename, type)
    sounds[name] = love.audio.newSource(filename, type or "static")
end

function AudioManager:setLooping(name, isLooping)
    sounds[name]:setLooping(isLooping)
end

function AudioManager:loadSources()
    loadSound('drip', 'assets/sounds/drip.wav')
    loadSound('bg', 'assets/music/violinLoop.ogg', 'stream')
end

function AudioManager:playSound(name)
    if sounds[name] then
        sounds[name]:stop()
        sounds[name]:play()
    else
        love.graphics.print('Sound not found: ' .. name)
    end
end

return AudioManager
