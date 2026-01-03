--? Position of rectangle

local x = 100
local y = 100

local speed = 200 --? pixels per second

function love.update(dt)
    if love.keyboard.isDown('right') then
        x = x + speed * dt
    elseif love.keyboard.isDown('left') then
        x = x - speed * dt
    end

    if love.keyboard.isDown('down') then
        y = y + speed * dt
    elseif love.keyboard.isDown('up') then
        y = y - speed * dt
    end
end

function love.draw()
    love.graphics.setColor(1,0,0)
    love.graphics.rectangle('fill', x, y, 10, 10)
end

function love.keypressed(key)
    if key == "escape" then
        love.event.quit()
    end
end
