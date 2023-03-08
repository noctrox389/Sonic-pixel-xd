function onCreate()
	-- background shit
	makeLuaSprite('bg', 'normal/bg', -1000, -198)
	scaleObject('bg', 9, 9)
	setLuaSpriteScrollFactor('bg', 0.9, 0.9);

	makeAnimatedLuaSprite('metalbg', 'normal/metalbg', -1000, -170)
	scaleObject('metalbg', 9, 9)
	setLuaSpriteScrollFactor('metalbg', 1.0, 1.0);
	addAnimationByPrefix('metalbg', 'metalbg', 'metalbg', 3, true)
	objectPlayAnimation('metalbg', 'metalbg', true)

	makeLuaSprite('floor', 'normal/floor', -1000, -173)
	scaleObject('floor', 9, 9)
	setLuaSpriteScrollFactor('floor', 1.0, 1.0);

	makeLuaSprite('black_vignette', 'black_vignette', 0, 0);
	setObjectCamera('black_vignette', 'other');



	addLuaSprite('bg', false)
	setProperty('bg.antialiasing',false)
	addLuaSprite('metalbg', false)
	setProperty('metalbg.antialiasing',false)
	addLuaSprite('floor', false)
	setProperty('floor.antialiasing',false)
	addLuaSprite('black_vignette', true)


end







