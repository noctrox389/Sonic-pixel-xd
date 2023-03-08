function onCreate()
	-- background shit
	makeLuaSprite('sky2', 'SonicP2/sky2', -1000, -230)
	scaleObject('sky2', 9, 9)
	setLuaSpriteScrollFactor('sky2', 0.8, 0.8);

	makeAnimatedLuaSprite('wather', 'SonicP2/wather', -1000, -230)
	scaleObject('wather', 9, 9)
	setLuaSpriteScrollFactor('wather', 0.9, 0.9);
	addAnimationByPrefix('wather', 'wather', 'wather', 24, true)
	objectPlayAnimation('wather', 'wather', true)

	makeAnimatedLuaSprite('floor', 'SonicP2/floor', -1000, -230)
	scaleObject('floor', 9, 9)
	setLuaSpriteScrollFactor('floor', 1.0, 1.0);
	addAnimationByPrefix('floor', 'floor', 'floor', 24, true)
	objectPlayAnimation('floor', 'floor', true)


	addLuaSprite('sky2', false)
	setProperty('sky2.antialiasing',false)
	addLuaSprite('wather', false)
	setProperty('wather.antialiasing',false)
	addLuaSprite('floor', false)
	setProperty('floor.antialiasing',false)


end

function onCreatePost()

	setProperty('gf.visible',true)
end







