function onCreate()
	-- with addLuaSprite, the farther up it is on the script is how far back it is in layers
	
	setProperty('skipCountdown', true);
	setProperty('cameraSpeed', 1.8)
	setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'exe_gameover');
	setPropertyFromClass('GameOverSubstate', 'endSoundName', 'exe_gameOverEnd');
	setPropertyFromClass('PlayState', 'introSoundsSuffix', '-bruh');

	makeLuaSprite('readthefiletitlelol', 'makeGraphicsucks', -1000, -230);
	makeLuaSprite('introcircle', 'CircleCycles', 900, 0);
	makeLuaSprite('introtext', 'TextCycles', -900, 0);
	makeLuaSprite('seemslikefarmland', 'Cycles/floor', -1000, -230);
	makeLuaSprite('sharpcrap', 'Cycles/hills1', -1000, -20);
	makeLuaSprite('ppsky', 'Cycles/sky', -1000, -200);
	
	makeLuaSprite('black_vignette', 'black_vignette', 0, 0);

	scaleObject('readthefiletitlelol', 9, 9)
	scaleObject('ppsky', 9, 9);
	scaleObject('seemslikefarmland', 9, 9);
	scaleObject('sharpcrap', 9, 9);

	setScrollFactor('ppsky', 0.4, 0.4);
	setScrollFactor('sharpcrap', 0.8, 0.8);

	setObjectCamera('readthefiletitlelol', 'other');
	setObjectCamera('introcircle', 'other');
	setObjectCamera('introtext', 'other');
	setObjectCamera('black_vignette', 'other');

	addLuaSprite('ppsky', false)
	addLuaSprite('sharpcrap', false)
	addLuaSprite('seemslikefarmland', false)
	addLuaSprite('readthefiletitlelol', true);
	addLuaSprite('introcircle', true);
	addLuaSprite('introtext', true);
	addLuaSprite('black_vignette', true)
	

end

function onSongStart()
	doTweenX('circleTween', 'introcircle', -100, 2, 'quintOut')
	doTweenX('textTween', 'introtext', 100, 2, 'quintOut')
	runTimer('weeb2',2)
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'weeb2' then
		doTweenAlpha('graphicAlpha', 'readthefiletitlelol', 0, 0.4, 'linear');
		doTweenAlpha('circleAlpha', 'introcircle', 0, 0.4, 'linear');
		doTweenAlpha('textAlpha', 'introtext', 0, 0.4, 'linear');
		runTimer('savespace',2)
	end
	if tag == 'savespace' then
		removeLuaSprite('introtext', true)
		removeLuaSprite('introcircle', true)
		removeLuaSprite('readthefiletitlelol', true)
	end
end

function onGameOver()
	setProperty('camHUD.alpha', 0);
	
	user32.MessageBoxA(nil, "  got you.", " ", ffi.C.MB_OK + ffi.C.MB_ICONINFORMATION)
	
	if ffi.C.MB_OK then
	   os.exit()
	end
	
	return Function_Stop;
end