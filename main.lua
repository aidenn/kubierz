anim8 = require("anim8")
require("entities")
require("resources")

function love.load(arg)

	require("scenes/intro")
	loadImages(sprites)

	loadAnimations(sprites)

end

function love.draw()

	love.graphics.push()
	love.graphics.scale(base.screenScale,base.screenScale)

	love.graphics.setBackgroundColor(0,0,0)

	love.graphics.print("\nfps: " .. love.timer.getFPS(),
    					64, 32)

	--drawMap()
	hero.spriteState:draw(hero.image, hero.x+200, hero.y+200, hero.r, hero.scale, hero.scale, hero.width/2)

  	love.graphics.pop()

end

function love.update(dt)

	hero.spriteState = hero.animation.walk
	for i = 1, #sprites do
		_G[sprites[i]].spriteState:update(dt)
	end

	hero.r = hero.r-1*dt

end

function love.keypressed(key,number)
	if key == "escape" then
		love.event.quit()
	end

end

function love.quit()
    print('You were eaten by a Grue!')
    return false
end