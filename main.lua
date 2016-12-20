local canvas = love.graphics.newCanvas()
time = 1
screenW, screenH = love.graphics.getDimensions()
screenWMid, screenHMid = screenW / 2, screenH / 2
radius = 200
time2stop = 0.3
function love.update(dt)
  time = time + dt
  x, y = love.math.random(screenW), love.math.random(screenH)
  radius = love.math.random(500)
  time2stop = radius / 5000
  count = 1000/radius
    canvas:renderTo(function()
      love.graphics.setColor(love.math.random(255), love.math.random(255), love.math.random(255), love.math.random(255));
      if time > time2stop then
      for i=1,count do
          x, y = love.math.random(screenW), love.math.random(screenH)
          love.graphics.circle('fill', x, y, radius, 100)
          time = 0
        --love.graphics.line(0, 0, love.math.random(0, love.graphics.getWidth()), love.math.random(0, love.graphics.getHeight()));
      end
    end
    end);
end

function love.draw()
    love.graphics.setColor(255, 255, 255);
    love.graphics.draw(canvas);
end


function love.keypressed(key)
  if  key == 'escape' then
    love.event.quit()
  end
end
