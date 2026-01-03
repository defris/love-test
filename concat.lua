function love.load()
end

function love.update(dt)

end

function love.draw()
    love.graphics.print('Player: ' .. playerName, 50, 200)
    love.graphics.print('Score: ' .. score, 50, 230)
end
