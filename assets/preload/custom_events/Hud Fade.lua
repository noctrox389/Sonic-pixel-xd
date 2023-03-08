-- Event notes hooks
local fadeDuration = 0
local Hudalpha = 0
function onEvent(name, value1, value2)
	if name == 'Hud Fade' then
		fadeDuration = tonumber(value1);
		if fadeDuration < 0 then
			fadeDuration = 0;
		end

		fadeDuration = tonumber(value2);
		if fadeDuration == 0 then
			setProperty('camHUD.alpha', Hudalpha);
		else
			doTweenAlpha('hudFadeEventTween', 'camHUD', Hudalpha, fadeDuration, 'linear');
		end
		--debugPrint('Event triggered: ', name, duration, targetAlpha);
	end
end