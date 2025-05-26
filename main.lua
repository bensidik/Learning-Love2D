-- start the game use alt+L
local x = 400
local y = 300
local speed = 200

function love.load()
    -- Runs once at the beginning
    love.window.setTitle("Septian Game")
end
function love.update(dt)
    -- Runs every frame; dt = delta time (seconds since last frame)
    if love.keyboard.isDown("right") then
        x = x +speed * dt
    elseif love.keyboard.isDown("left") then
        x = x - speed *dt
    end
    if love.keyboard.isDown("down") then
        y = y + speed * dt
    elseif love.keyboard.isDown("up") then
        y = y - speed * dt
    end
end
function love.draw()
    -- Runs every frame to draw graphics
    love.graphics.setColor(1, 0, 0) -- Red color
    love.graphics.circle("fill", x, y, 30)
end