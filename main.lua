if arg[2] == "debug" then
    require("lldebugger").start()
end

Object = require "classic"
Tick = require "tick"


local currentframe = 1

local image = love.graphics.newImage("jump.png")

local quad_width = 117
local quad_height = 233

local frames = {}



function love.load()
    for i = 0 , 4 do
        table.insert(frames, love.graphics.newQuad(i * quad_width, 0, quad_width, quad_height, image:getDimensions()))
    end
end


function love.update(dt)

   currentframe = currentframe + 10 * dt

   if currentframe >= 6 then
       currentframe = 1
   end

end



function love.draw()

    love.graphics.draw(image, frames[math.floor(currentframe)], 100, 100)


end