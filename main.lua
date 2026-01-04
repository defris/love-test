local audio = require('audioManager')

function love.load()
    audio:loadSources()
    audio:playSound('bg')
    audio:setLooping('bg', true)
end

function love.keypressed(key)
    if key == 'escape' then
        love.event.quit()
    end
end
