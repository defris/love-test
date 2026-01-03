function love.load()
    message = 'Welcome to Love\'2D!'
end

function love.update(dt)
    
end

function love.draw()
    love.graphics.print(message, 100, 100)
    love.graphics.print('Hello world', 100, 130)
    --Rectangle ('method', x, y, width, height)
    love.graphics.rectangle('fill', 500, 500, 100, 100)
    --Circle ('method', x, y, radius)
    love.graphics.circle('line', 200, 300, 50)
end
