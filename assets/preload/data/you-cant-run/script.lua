function onUpdate(elpased)
    for i=0,3 do
   noteTweenAlpha(i+0, i, math.floor, 0.3)
   end
end

    
function onCreate()
    addVCREffect("game")
    addVCREffect("hud")
	setPropertyFromClass('GameOverSubstate', 'characterName', 'dead'); --Character json file for the death animation
	setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'fnf_loss_sfx'); --put in mods/sounds/
	setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'timeOver'); --put in mods/music/
	setPropertyFromClass('GameOverSubstate', 'endSoundName', 'timeOverEnd'); --put in mods/music/
end