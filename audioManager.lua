local AudioManager = {}
local sounds = {}

function AudioManager:loadSources()
    sounds['soundDrip'] = love.audio.newSource('assets/sounds/drip.wav', 'static')
    sounds['bgMusic'] = love.audio.newSource('assets/music/violinLoop.ogg', 'stream')
    sounds['bgMusic']:setLooping(true)
end

function AudioManager:loadSound(name, filename, type)
    sounds[name] = love.audio.newSource(filename, type or "static")
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