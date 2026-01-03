function love.load()
    message = 'Welcome to Love\'2D!'
end

function love.update(dt)

end

function love.draw()
    love.graphics.setColor(1, 1, 1)
    love.graphics.print(message, 100, 100)
    love.graphics.print('Hello world', 100, 130)
    --Color RGB 0 -> 1
    love.graphics.setColor(1, 0, 0)
    --Rectangle ('method', x, y, width, height)
    love.graphics.rectangle('fill', 500, 500, 100, 100)
    --Circle ('method', x, y, radius)
    love.graphics.setColor(0, 1, 0)
    love.graphics.circle('line', 200, 300, 50)
    --Line (x1, y1, x2, y2)
    love.graphics.setColor(0, 0, 1)
    love.graphics.line(300, 50, 400, 100)
end