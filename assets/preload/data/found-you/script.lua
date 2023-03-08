function onUpdate(elapsed)
	if curStep == 2592 then
		if version > '0.6' then --make sure this only runs on 0.6.1+
			runHaxeCode([[
				game.iconP1.changeIcon('amy');
			]])
			setProperty('boyfriend.healthColorArray', {252, 144, 252})
			triggerEvent('Change Character', 'bf', getProperty('boyfriend.curCharacter'))
		end
	end
	if curStep == 3360 then
		if version > '0.6' then --make sure this only runs on 0.6.1+
			runHaxeCode([[
				game.iconP1.changeIcon('duo');
			]])
			setProperty('boyfriend.healthColorArray', {50, 73, 127})
			triggerEvent('Change Character', 'bf', getProperty('boyfriend.curCharacter'))
		end
	end	
end
