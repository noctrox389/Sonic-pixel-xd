function onCreate()
	-- background shit
	makeAnimatedLuaSprite('bg', 'too-slow/bg', -1000, -700)
	scaleObject('bg', 9, 9)
	setLuaSpriteScrollFactor('bg', 0.8, 0.8);
	addAnimationByPrefix('bg', 'bg', 'bg', 10, true)
	objectPlayAnimation('bg', 'bg', true)

	makeLuaSprite('bg3', 'too-slow/bg3', -1000, -700)
	scaleObject('bg3', 9, 9)
	setLuaSpriteScrollFactor('bg3', 0.9, 0.9);

	makeAnimatedLuaSprite('bg2', 'too-slow/bg2', -1000, -700)
	scaleObject('bg2', 9, 9)
	setLuaSpriteScrollFactor('bg2', 1.0, 1.0);
	addAnimationByPrefix('bg2', 'bg2', 'bg2', 10, true)
	objectPlayAnimation('bg2', 'bg2', true)

	addLuaSprite('bg', false)
	setProperty('bg.antialiasing',false)
	addLuaSprite('bg3', false)
	setProperty('bg3.antialiasing',false)
	addLuaSprite('bg2', false)
	setProperty('bg2.antialiasing',false)


end

function onCreatePost()

	setProperty('gf.visible',true)
end







