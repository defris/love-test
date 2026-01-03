local player = {}
local speed = 400 -- pixels per second

function love.load()
    player.image = love.graphics.newImage('assets/images/knight.png')
    player.x = 100
    player.y = 100
    player.facingRight = true -- for sprite flipping
end

function love.update(dt)
    if love.keyboard.isDown('right') then
        player.x = math.min(player.x + speed * dt, love.graphics.getWidth() - .5 * player.image:getWidth())
        player.facingRight = true
    elseif love.keyboard.isDown('left') then
        player.x = math.max(player.x - speed * dt, 0)
        player.facingRight = false
    end

    if love.keyboard.isDown('down') then
        player.y = math.min(player.y + speed * dt, love.graphics.getHeight() - .5 * player.image:getHeight())
    elseif love.keyboard.isDown('up') then
        player.y = math.max(player.y - speed * dt, 0)
    end
end

function love.draw()
    if player.facingRight then
        love.graphics.draw(player.image, player.x, player.y, 0, .5, .5)
    else
        -- Flip sprite horizontally when facing left
        love.graphics.draw(player.image, player.x + 0.5 * player.image:getWidth(), player.y, 0, -.5, .5)
    end
end
