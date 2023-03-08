function onCreate()--fatal
-- Stage1
	makeAnimatedLuaSprite('truefatalstage', 'fatal/truefatalstage', -1050, -850); 
  addAnimationByPrefix('truefatalstage', 'truefatalstage', 'idle', 15, true);  
  objectPlayAnimation('truefatalstage', 'truefatalstage', true)
  scaleObject('truefatalstage', 5, 5);
  addLuaSprite('truefatalstage', false);
  setProperty('truefatalstage.visible', true);
	setProperty('truefatalstage.antialiasing',false)

 -- Stage2
  makeAnimatedLuaSprite('domain2', 'fatal/domain2', -1050, -750); 
  addAnimationByPrefix('domain2', 'domain2', 'idle', 15, true);  
  objectPlayAnimation('domain2', 'domain2', true)
  scaleObject('domain2', 5, 5);
  addLuaSprite('domain2', false);
  setProperty('domain2.visible', true);
	setProperty('domain2.antialiasing',false)

  makeAnimatedLuaSprite('domain', 'fatal/domain', -875, -630); 
  addAnimationByPrefix('domain', 'domain', 'idle', 11, true);  
  objectPlayAnimation('domain', 'domain', true)
  scaleObject('domain', 4.5, 4.5);
  addLuaSprite('domain', false);
  setProperty('domain.visible', true);
  setProperty('domain.antialiasing',false)

 -- Stage4
  makeLuaSprite('glitch', 'fatal/glitch', -1050, -850)
	scaleObject('glitch', 6, 6)
  addLuaSprite('glitch', false);
  setProperty('glitch.visible', true);
	setProperty('glitch.antialiasing',false)

 -- Stage5
  makeLuaSprite('final', 'fatal/final', -1050, -1050)
	scaleObject('final', 6, 6)
  addLuaSprite('final', false);
  setProperty('final.visible', true);
	setProperty('final.antialiasing',false)

 -- Stage3
  makeAnimatedLuaSprite('launchbase', 'fatal/launchbase', -1050, -1110); 
  addAnimationByPrefix('launchbase', 'launchbase', 'idle', 15, true);  
  objectPlayAnimation('launchbase', 'launchbase', true)
  scaleObject('launchbase', 6, 6);
  addLuaSprite('launchbase', false);
  setProperty('launchbase.visible', true);
	setProperty('launchbase.antialiasing',false)


	

end

function onEvent(name,value1,value2)

	if name == 'Play Animation' then 
		
		if value1 == '1' then
--stage1	
  	setProperty('truefatalstage.visible', false);
--stage2	
	setProperty('domain.visible', true);
	setProperty('domain2.visible', true);
--stage3	
	setProperty('launchbase.visible', false);
--stage4
	setProperty('glitch.visible', false);
--stage5
	setProperty('final.visible', false);
	end
		if value1 == '2' then
--stage1	
  	setProperty('truefatalstage.visible', true);
--stage2	
	setProperty('domain.visible', false);
	setProperty('domain2.visible', false);
--stage3	
	setProperty('launchbase.visible', false);
--stage4
	setProperty('glitch.visible', false);
--stage5
	setProperty('final.visible', false);
	end
		if value1 == '3' then
--stage1	
  setProperty('truefatalstage.visible', false);
--stage2	
	setProperty('domain.visible', false);
	setProperty('domain2.visible', false);
--stage3	
	setProperty('launchbase.visible', true);
--stage4
	setProperty('glitch.visible', false);
--stage5
	setProperty('final.visible', false);
  end
		if value1 == '4' then
--stage1	
  setProperty('truefatalstage.visible', false);
--stage2	
	setProperty('domain.visible', false);
	setProperty('domain2.visible', false);
--stage3	
	setProperty('launchbase.visible', false);
--stage4
	setProperty('glitch.visible', true);
--stage5
	setProperty('final.visible', false);
	end
		if value1 == '5' then
--stage1	
  setProperty('truefatalstage.visible', false);
--stage2	
	setProperty('domain.visible', false);
	setProperty('domain2.visible', false);
--stage3	
	setProperty('launchbase.visible', false);
--stage4
	setProperty('glitch.visible', false);
--stage5
	setProperty('final.visible', true);

		end
	end
end

function onCreatePost()

	setProperty('gf.visible',false)
end