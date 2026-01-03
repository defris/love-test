local Audio = require('audioManager')

function love.load()
    Audio:loadSources()
    Audio:playSound('bgMusic')
end

function love.keypressed(key)
    if key == 'escape' then
        love.event.quit()
    end
end
