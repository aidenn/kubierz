-- load images, valid imageTypes: sprites

function loadImages(imageType)
	for i = 1, #imageType do
		_G[imageType[i]].image = love.graphics.newImage(_G[imageType[i]].image)
		_G[imageType[i]].image:setFilter(_G[imageType[i]].reduceFilter, _G[imageType[i]].enlargeFilter)
	end
end

-- load animations, valid imageTypes: sprites

function loadAnimations(imageType)
	for i = 1, #imageType do
		local imageType = _G[imageType[i]]
		imageType.animGrid = anim8.newGrid(imageType.width, imageType.height, imageType.image:getWidth(), imageType.image:getHeight())
		for j = 1, #imageType.animationList do
			local animation = imageType.animation[imageType.animationList[j]]
			imageType.animation[imageType.animationList[j]] = anim8.newAnimation(imageType.animGrid(animation.framesCol, animation.framesRow), animation.speed)
		end
	end
end