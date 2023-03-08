function onCreate()
-- Stage1
	makeAnimatedLuaSprite('bg', 'tte/bg', -1000, -670)
	scaleObject('bg', 9, 9)
	setLuaSpriteScrollFactor('bg', 0.8, 0.8);
	addAnimationByPrefix('bg', 'bg', 'bg', 10, true)
	objectPlayAnimation('bg', 'bg', true)

	makeAnimatedLuaSprite('grassback2', 'tte/grassback2', -800, -670)
	scaleObject('grassback2', 9, 9)
	setLuaSpriteScrollFactor('grassback2', 0.9, 0.9);
	addAnimationByPrefix('grassback2', 'grassback2', 'grassback2', 10, true)
	objectPlayAnimation('grassback2', 'grassback2', true)

	makeLuaSprite('floor1', 'tte/floor1', -700, -700)
	scaleObject('floor1', 9, 9)
	setLuaSpriteScrollFactor('floor1', 1.0, 1.0);

	makeLuaSprite('tree', 'tte/tree', -1000, -700)
	scaleObject('tree', 9, 9)
	setLuaSpriteScrollFactor('tree', 0.8, 0.8);

	addLuaSprite('bg', false)
	setProperty('bg.antialiasing',false)
	addLuaSprite('grassback2', false)
	setProperty('grassback2.antialiasing',false)
	addLuaSprite('floor1', false)
	setProperty('floor1.antialiasing',false)	
	addLuaSprite('tree', true)
	setProperty('tree.antialiasing',false)
	
 -- Stage2
	makeAnimatedLuaSprite('bg2', 'tte/bg2', -600, -250)
	scaleObject('bg2', 3, 3)
	setLuaSpriteScrollFactor('bg2', 0.8, 0.8);
	addAnimationByPrefix('bg2', 'bg2', 'bg2', 24, true)
	objectPlayAnimation('bg2', 'bg2', true)

	makeLuaSprite('grassback', 'tte/grassback', -1000, -250)
	scaleObject('grassback', 9, 9)
	setLuaSpriteScrollFactor('grassback', 0.9, 0.9);

	makeLuaSprite('grass', 'tte/grass', -800, -230)
	scaleObject('grass', 9, 9)
	setLuaSpriteScrollFactor('grass', 1.0, 1.0);

	addLuaSprite('bg2', false)
	setProperty('bg2.antialiasing',false)
	addLuaSprite('grassback', false)
	setProperty('grassback.antialiasing',false)
	addLuaSprite('grass', false)
	setProperty('grass.antialiasing',false)

 -- Stage3
	makeLuaSprite('sky', 'tte/sky', -1000, -200)
	scaleObject('sky', 9, 9)
	setLuaSpriteScrollFactor('sky', 0.8, 0.8);

	makeAnimatedLuaSprite('sonic', 'tte/sonic', 200, -200)
	scaleObject('sonic', 9, 9)
	setLuaSpriteScrollFactor('sonic', 0.9, 0.9);
	addAnimationByPrefix('sonic', 'sonic', 'sonic', 24, true)
	objectPlayAnimation('sonic', 'sonic', true)

	makeLuaSprite('floor', 'tte/floor', -1000, -200)
	scaleObject('floor', 9, 9)
	setLuaSpriteScrollFactor('floor', 1.0, 1.0);

	addLuaSprite('sky', false)
	setProperty('sky.antialiasing',false)
	addLuaSprite('sonic', false)
	setProperty('sonic.antialiasing',false)
	addLuaSprite('floor', false)
	setProperty('floor.antialiasing',false)

 -- Stage4
	makeAnimatedLuaSprite('floor4', 'tte/floor4', -1000, -200)
	scaleObject('floor4', 9, 9)
	setLuaSpriteScrollFactor('floor4', 1.0, 1.0);
	addAnimationByPrefix('floor4', 'floor4', 'floor4', 24, true)
	objectPlayAnimation('floor4', 'floor4', true)

	makeAnimatedLuaSprite('bg4', 'tte/bg4', -1000, -1000)
	scaleObject('bg4', 9, 9)
	setLuaSpriteScrollFactor('bg4', 1.0, 1.0);
	addAnimationByPrefix('bg4', 'bg4', 'bg4', 24, true)
	objectPlayAnimation('bg4', 'bg4', true)

	addLuaSprite('bg4', false)
	setProperty('bg4.antialiasing',false)
	addLuaSprite('floor4', false)
	setProperty('floor4.antialiasing',false)

 -- Stage5
	makeAnimatedLuaSprite('sky2', 'tte/sky2', -600, -250)
	scaleObject('sky2', 3, 3)
	setLuaSpriteScrollFactor('sky2', 0.8, 0.8);
	addAnimationByPrefix('sky2', 'sky2', 'sky2', 36, true)
	objectPlayAnimation('sky2', 'sky2', true)

	makeLuaSprite('back', 'tte/back', -1000, -250)
	scaleObject('back', 9, 9)
	setLuaSpriteScrollFactor('back', 0.9, 0.9);

	makeLuaSprite('piso', 'tte/piso', -800, -230)
	scaleObject('piso', 9, 9)
	setLuaSpriteScrollFactor('piso', 1.0, 1.0);

	addLuaSprite('sky2', false)
	setProperty('sky2.antialiasing',false)
	addLuaSprite('back', false)
	setProperty('back.antialiasing',false)
	addLuaSprite('piso', false)
	setProperty('piso.antialiasing',false)

end

function onEvent(name,value1,value2)

	if name == 'Play Animation' then 
		
		if value1 == '1' then
--stage1	
	setProperty('bg.visible',false)
	setProperty('floor1.visible',false)	
	setProperty('tree.visible',false)
--stage2	
	setProperty('bg2.visible', true)
	setProperty('grassback.visible',true)
	setProperty('grass.visible',true)
--stage3	
	setProperty('sky.visible',false)
	setProperty('sonic.visible',false)
	setProperty('floor.visible',false)
--stage4
	setProperty('bg4.visible',false)
	setProperty('floor4.visible',false)
--stage5
	setProperty('sky2.visible', false)
	setProperty('back.visible',false)
	setProperty('piso.visible',false)
	end
		if value1 == '2' then
--stage1	
	setProperty('bg.visible',true)
	setProperty('floor1.visible',true)	
	setProperty('tree.visible',true)
--stage2	
	setProperty('bg2.visible', false)
	setProperty('grassback.visible',false)
	setProperty('grass.visible',false)
--stage3	
	setProperty('sky.visible',false)
	setProperty('sonic.visible',false)
	setProperty('floor.visible',false)
--stage4
	setProperty('bg4.visible',false)
	setProperty('floor4.visible',false)
--stage5
	setProperty('sky2.visible', false)
	setProperty('back.visible',false)
	setProperty('piso.visible',false)
	end
		if value1 == '3' then
--stage1	
  	setProperty('sky.visible', false);
	setProperty('grassback.visible', false);
	setProperty('grass.visible', false);
--stage2	
	setProperty('bg2.visible', false)
	setProperty('grassback.visible',false)
	setProperty('grass.visible',false)
--stage3	
	setProperty('sky.visible',true)
	setProperty('sonic.visible',true)
	setProperty('floor.visible',true)
--stage4
	setProperty('bg4.visible',false)
	setProperty('floor4.visible',false)
--stage5
	setProperty('sky2.visible', false)
	setProperty('back.visible',false)
	setProperty('piso.visible',false)
	end
		if value1 == '4' then
--stage1	
  	setProperty('sky.visible', false);
	setProperty('grassback.visible', false);
	setProperty('grass.visible', false);
--stage2	
	setProperty('bg2.visible', false)
	setProperty('grassback.visible',false)
	setProperty('grass.visible',false)
--stage3	
	setProperty('sky.visible',false)
	setProperty('sonic.visible',false)
	setProperty('floor.visible',false)
--stage4
	setProperty('bg4.visible',true)
	setProperty('floor4.visible',true)
--stage5
	setProperty('sky2.visible', false)
	setProperty('back.visible',false)
	setProperty('piso.visible',false)
	end
		if value1 == '5' then
--stage1	
  	setProperty('sky.visible', false);
	setProperty('grassback.visible', false);
	setProperty('grass.visible', false);
--stage2	
	setProperty('bg2.visible', false)
	setProperty('grassback.visible',false)
	setProperty('grass.visible',false)
--stage3	
	setProperty('sky.visible',false)
	setProperty('sonic.visible',false)
	setProperty('floor.visible',false)
--stage4
	setProperty('bg4.visible',false)
	setProperty('floor4.visible',false)
--stage5
	setProperty('sky2.visible', true)
	setProperty('back.visible',true)
	setProperty('piso.visible',true)

		end
	end
end

function onCreatePost()

	setProperty('gf.visible',false)
end