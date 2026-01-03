local character
local characterWidth, characterHeight

function love.load()
    character = love.graphics.newImage('assets/images/knight.png')
    characterWidth = character.getWidth(character)
    --? : sugar t:f() => t.f(t)
    characterHeight = character:getHeight()
end

function love.update(dt)
    
end

function love.draw()
    -- love.graphics.draw(image, 100, 100, rotation, scaleX, scaleY)
    -- love.graphics.draw(character, 100, 100, 0, .2, .2)

    -- Display character info
    love.graphics.print('Widht: ' .. characterWidth, 10, 10)
    love.graphics.print('Height: ' .. characterHeight, 10, 30)

    -- Get screen size
    local screenW, screenH = love.graphics.getDimensions()

    -- character to centre
    love.graphics.draw(character, (screenW - characterWidth)/2, (screenH - characterHeight)/2)
end
