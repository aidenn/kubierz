-- hero data

local hero = {}

hero.image = "assets/heroSprite.png"

hero.scale = base.spriteScale

hero.animation = {}
hero.animationList = { 'stand', 'walk' }

hero.animation.stand = {
	framesCol = '1-1',
	framesRow = 1,
	speed = 0.1
}

hero.animation.walk = {
	framesCol = '2-5',
	framesRow = 1,
	speed = 0.1
}

return hero