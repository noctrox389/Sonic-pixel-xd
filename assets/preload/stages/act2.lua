function onCreate()
-- Stage1
	makeLuaSprite('sky', 'SonicP2/sky', -1000, -250)
	scaleObject('sky', 9, 9)
	setLuaSpriteScrollFactor('sky', 0.8, 0.8);

	makeLuaSprite('grassback', 'SonicP2/grassback', -1000, -250)
	scaleObject('grassback', 9, 9)
	setLuaSpriteScrollFactor('grassback', 0.9, 0.9);

	makeLuaSprite('grass', 'SonicP2/grass', -800, -230)
	scaleObject('grass', 9, 9)
	setLuaSpriteScrollFactor('grass', 1.0, 1.0);

	addLuaSprite('sky', false)
	setProperty('sky.antialiasing',false)
	addLuaSprite('grassback', false)
	setProperty('grassback.antialiasing',false)
	addLuaSprite('grass', false)
	setProperty('grass.antialiasing',false)
	

 -- Stage2
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

	setProperty('wather.visible', false);
	setProperty('floor.visible', false);
	setProperty('sky2.visible', false);

 -- Stage3
	makeLuaSprite('w', 'SonicP2/w', -1000, -250)
	scaleObject('w', 9, 9)
	setLuaSpriteScrollFactor('w', 0.8, 0.8);
	
	addLuaSprite('w', false)
	setProperty('w.antialiasing',false)

	setProperty('w.visible', false);

end

function onEvent(name,value1,value2)

	if name == 'Play Animation' then 
		
		if value1 == '1' then
--stage1	
  	setProperty('sky.visible', false);
	setProperty('grassback.visible', false);
	setProperty('grass.visible', false);
--stage2	
	setProperty('wather.visible', true);
	setProperty('floor.visible', true);
	setProperty('sky2.visible', true);
--stage3	
	setProperty('w.visible', false);
	end
		if value1 == '2' then
--stage1	
  	setProperty('sky.visible', true);
	setProperty('grassback.visible', true);
	setProperty('grass.visible', true);
--stage2	
	setProperty('wather.visible', false);
	setProperty('floor.visible', false);
	setProperty('sky2.visible', false);
--stage3	
	setProperty('w.visible', false);
	end
		if value1 == '3' then
--stage1	
  	setProperty('sky.visible', false);
	setProperty('grassback.visible', false);
	setProperty('grass.visible', false);
--stage2	
	setProperty('wather.visible', false);
	setProperty('floor.visible', false);
	setProperty('sky2.visible', false);
--stage3	
	setProperty('w.visible', true);

		end
	end
end

function onCreatePost()

	setProperty('gf.visible',false)
end