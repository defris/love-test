function love.load()
    -- Short sound effect (load into memory)
    soundDrip = love.audio.newSource('assets/sounds/drip.wav', 'static')

    -- BG music (streamed from disk to save memory)
    bgMusic = love.audio.newSource('assets/music/violinLoop.ogg', 'stream')

    -- Loop the music
    bgMusic:setLooping(true)
    bgMusic:play()
end

function love.update(dt)
    local currentVolume = bgMusic:getVolume()
    if currentVolume > 0 then
        bgMusic:setVolume(currentVolume - .1 * dt)
    end
end

function love.keypressed(key)
    if key == 'space' then
        soundDrip:stop() --? Stop if already playing
        soundDrip:play() --? Replay the sound
    end

    if key == 'p' then
        if bgMusic:isPlaying() then
            bgMusic:stop()
        else
            bgMusic:play()
        end
    end
end
