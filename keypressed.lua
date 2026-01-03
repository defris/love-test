local playerName = 'Ivan'
local score = 0

local message = ''
function love.load()
end

function love.update(dt)
    -- score = score + 1
end

function love.keypressed(key)
    if key == 'space' then
        message = 'Spacebar was pressed'
    end

    if key == "escape" then
        love.event.quit()
    end
end

function love.draw()
    love.graphics.print(message, 100, 100)
end
